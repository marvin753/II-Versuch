//
//  AuthViewModel.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.04.24.
//

import Foundation
//import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var isUserLoggedIn: Bool = false // Muss ich wieder auf false setzten, damit ich am anafng mich wie üblich einloggen muss wenn ich in LoginVIewSwiftUIView drin bin 

    func logout() {
        DispatchQueue.main.async {
            self.isUserLoggedIn = false
            self.clearSensitiveData()
        }
    }

    private func clearSensitiveData() {
        // Bereinige hier alle sensiblen Daten oder Einstellungen
        print("Sensitive data has been cleared.")
    }
}
