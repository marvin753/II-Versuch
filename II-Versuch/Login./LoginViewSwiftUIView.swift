//
//  LoginView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import SwiftUI

<<<<<<< HEAD
=======

>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
struct LoginViewSwiftUIView: View {
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        NavigationStack {
<<<<<<< HEAD
            ScrollView {  // Hinzugefügt, um das Scrollen zu ermöglichen
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
                .hideKeyboardOnTap()
=======
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
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
            }
            .navigationDestination(isPresented: $authViewModel.isUserLoggedIn) {
                ContentView()
                    .navigationBarBackButtonHidden(true)
<<<<<<< HEAD
=======
                    .navigationBarHidden(true)
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
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
<<<<<<< HEAD
=======


>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
