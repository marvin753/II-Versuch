//
//  II_VersuchApp.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 25.03.24.
//
<<<<<<< HEAD
=======

>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
import SwiftUI
import Firebase

@main
struct II_VersuchApp: App {
    @StateObject private var authViewModel = AuthViewModel()
<<<<<<< HEAD
    @State private var showSplashScreen = true

    // Verwende UIApplicationDelegateAdaptor, um den AppDelegate zu integrieren
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    init() {
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
            print("Firebase configured in init")
        }
=======

    init() {
        FirebaseApp.configure()
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
    }

    var body: some Scene {
        WindowGroup {
<<<<<<< HEAD
            if showSplashScreen {
                SplashScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            self.showSplashScreen = false
                        }
                    }
            } else {
                switchViewState().environmentObject(authViewModel)
            }
        }
    }

=======
            switchViewState().environmentObject(authViewModel)
        }
    }
    
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
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
