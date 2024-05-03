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
            switchViewState().environmentObject(authViewModel)
        }
    }
    
    @ViewBuilder
    private func switchViewState() -> some View {
        if authViewModel.isUserLoggedIn {
            switch authViewModel.currentUser?.role {
            case .admin:
                AdminView()
            case .mother, .standard:
                ContentView()
            default:
                LoginViewSwiftUIView()
            }
        } else {
            LoginViewSwiftUIView()
        }
    }
}
