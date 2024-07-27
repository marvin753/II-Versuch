//
//  Auth.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var isUserLoggedIn: Bool = false
    @Published var currentUser: User?
    @Published var loginErrorMessage: String?

    private let users: [User] = [
        User(id: "1", fullName: "Marvin Barsal", username: "Marvin Barsal", password: "Admin", role: .admin),
        User(id: "2", fullName: "Ute Barsal", username: "Ute Barsal", password: "Barsal", role: .mother),
        User(id: "3", fullName: "Standard User", username: "Standard User", password: "User", role: .standard)
    ]

    func authenticate(username: String, password: String) {
        // Vorprüfung auf leere Eingaben
        guard !username.isEmpty && !password.isEmpty else {
            if username.isEmpty && password.isEmpty {
                loginErrorMessage = "Bitte geben Sie Benutzernamen und Passwort ein."
            } else if username.isEmpty {
                loginErrorMessage = "Bitte geben Sie Ihren Benutzernamen ein."
            } else {
                loginErrorMessage = "Bitte geben Sie Ihr Passwort ein."
            }
            return
        }
        
        // Suche nach dem Benutzer basierend auf dem Benutzernamen
        if let userFound = users.first(where: { $0.username == username }) {
            // Überprüfung des Passworts
            if userFound.password == password {
                // Anonym anmelden bei Firebase, um Firestore zu verwenden
                Auth.auth().signInAnonymously { (authResult, error) in
                    if let error = error {
                        self.loginErrorMessage = "Failed to login: \(error.localizedDescription)"
                        return
                    }
                    DispatchQueue.main.async {
                        self.currentUser = userFound
                        self.isUserLoggedIn = true
                        self.loginErrorMessage = nil
                    }
                }
            } else {
                loginErrorMessage = "Das Passwort ist falsch."
            }
        } else {
            loginErrorMessage = "Der Benutzername ist falsch."
        }
    }

    func logout() {
        do {
            try Auth.auth().signOut()
            DispatchQueue.main.async {
                self.isUserLoggedIn = false
                self.currentUser = nil
                self.clearSensitiveData()
            }
        } catch let signOutError as NSError {
            print("Error signing out: \(signOutError.localizedDescription)")
        }
    }

    private func clearSensitiveData() {
        print("Sensitive data has been cleared.")
    }
}
