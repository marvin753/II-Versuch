//
//  LoginView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import SwiftUI


struct LoginViewSwiftUIView: View {
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        NavigationStack {
            VStack {
                Image("AppIconImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 140, height: 140)
                    .padding(.top, 15)
                    .padding(.bottom, 20)
                
                VStack(spacing: 24) {
                    InputView(text: $username,
                              title: "Benutzernamen",
                              placeholder: "Vornamen Nachnamen")
                    
                    InputView(text: $password,
                              title: "Passwort",
                              placeholder: "Gebe dein Passwort ein",
                              isSecureField: true)
                }
                .padding(.top, 12)
                
                if let errorMessage = authViewModel.loginErrorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                }
                
                Button(action: handleLogin) {
                    HStack {
                        Text("Anmelden")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    .background(Color(hex: "034C4A"))
                    .cornerRadius(10)
                    .padding(.top, 24)
                }
                
                Spacer()
            }
            .navigationDestination(isPresented: $authViewModel.isUserLoggedIn) {
                ContentView()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
            }
        }
    }

    func handleLogin() {
        authViewModel.authenticate(username: username, password: password)
    }
}

#Preview {
    LoginViewSwiftUIView()
        .environmentObject(AuthViewModel())
}


