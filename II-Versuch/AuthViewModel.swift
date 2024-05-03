//
//  Auth.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import Foundation


class AuthViewModel: ObservableObject {
    @Published var isUserLoggedIn: Bool = false
    @Published var currentUser: User?
    @Published var loginErrorMessage: String?

    private let users: [User] = [
        User(id: "1", fullName: "Marvin Barsal", username: "Marvin Barsal", password: "2", role: .admin),
        User(id: "2", fullName: "Ute Barsal", username: "Ute Barsal", password: "2", role: .mother),
        User(id: "4", fullName: "Test Barsal", username: "Test Barsal", password: "2", role: .standard),
        User(id: "3", fullName: "Standard User", username: "Standard User", password: "2", role: .standard)
    ]

    func authenticate(username: String, password: String) {
        guard !username.isEmpty && !password.isEmpty else {
            if username.isEmpty && password.isEmpty {
                loginErrorMessage = "Bitte geben Sie Benutzernamen und Passwort ein."
            } else if username.isEmpty {
                loginErrorMessage = "Bitte geben Sie Ihren Benutzernamen ein."
            } else if password.isEmpty {
                loginErrorMessage = "Bitte geben Sie Ihr Passwort ein."
            }
            return
        }
        
        let userFound = users.first(where: { $0.username == username })
        let passwordCorrect = userFound?.password == password

        if let user = userFound, passwordCorrect {
            DispatchQueue.main.async {
                self.currentUser = user
                self.isUserLoggedIn = true
                self.loginErrorMessage = nil
            }
        } else if userFound == nil && !passwordCorrect {
            loginErrorMessage = "Benutzername und Passwort sind beide falsch."
        } else if userFound == nil {
            loginErrorMessage = "Der Benutzername ist falsch."
        } else {
            loginErrorMessage = "Das Passwort ist falsch."
        }
    }
    
    func logout() {
        DispatchQueue.main.async {
            self.isUserLoggedIn = false
            self.currentUser = nil
            self.clearSensitiveData()
        }
    }

    private func clearSensitiveData() {
        print("Sensitive data has been cleared.")
    }
}
