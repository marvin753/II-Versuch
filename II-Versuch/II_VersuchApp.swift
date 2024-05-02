//
//  II_VersuchApp.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 25.03.24.
//

import SwiftUI
import Firebase

@main
struct II_VersuchApp: App {
    @StateObject private var authViewModel = AuthViewModel()

    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            if authViewModel.isUserLoggedIn {
                ContentView()
                    .environmentObject(authViewModel)
            } else {
                LoginViewSwiftUIView()
                    .environmentObject(authViewModel)
            }
        }
    }
}
