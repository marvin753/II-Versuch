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

    init() {
        // Automatische Überprüfung beim Start
        loadUserFromLocalStorage()
    }

    func authenticate(username: String, password: String) {
        guard !username.isEmpty && !password.isEmpty else {
            handleEmptyInput(username: username, password: password)
            return
        }
        
        if let userFound = users.first(where: { $0.username == username && $0.password == password }) {
            Auth.auth().signInAnonymously { (authResult, error) in
                if let error = error {
                    self.loginErrorMessage = "Failed to login: \(error.localizedDescription)"
                    return
                }
                DispatchQueue.main.async {
                    self.currentUser = userFound
                    self.isUserLoggedIn = true
                    self.loginErrorMessage = nil
                    self.saveUserToLocalStorage(user: userFound)
                }
            }
        } else {
            loginErrorMessage = "Benutzername oder Passwort ist falsch."
        }
    }

    func logout() {
        do {
            try Auth.auth().signOut()
            UserDefaults.standard.removeObject(forKey: "loggedInUser")
            DispatchQueue.main.async {
                self.isUserLoggedIn = false
                self.currentUser = nil
                self.clearSensitiveData()
            }
        } catch let signOutError as NSError {
            print("Error signing out: \(signOutError.localizedDescription)")
        }
    }

    private func saveUserToLocalStorage(user: User) {
        if let encoded = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(encoded, forKey: "loggedInUser")
        }
    }

    private func loadUserFromLocalStorage() {
        if let userData = UserDefaults.standard.data(forKey: "loggedInUser"),
           let decodedUser = try? JSONDecoder().decode(User.self, from: userData) {
            currentUser = decodedUser
            isUserLoggedIn = true
        }
    }

    private func clearSensitiveData() {
        print("Sensitive data has been cleared.")
    }

    private func handleEmptyInput(username: String, password: String) {
        if username.isEmpty && password.isEmpty {
            loginErrorMessage = "Bitte geben Sie Benutzernamen und Passwort ein."
        } else if username.isEmpty {
            loginErrorMessage = "Bitte geben Sie Ihren Benutzernamen ein."
        } else {
            loginErrorMessage = "Bitte geben Sie Ihr Passwort ein."
        }
    }
}
