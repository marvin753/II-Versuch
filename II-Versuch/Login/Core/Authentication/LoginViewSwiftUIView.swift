//
//  LoginViewSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 27.04.24.
//

import SwiftUI

struct LoginViewSwiftUIView: View {
    @State private var email = ""
    @State private var passwort = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                // Image
                //TODO: Das Login Bild noch ändern
                Image("N26Icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
                    .padding(.vertical, 32)
                
                // From fields
                VStack(spacing: 24){
                    InputView(text: $email,
                              title: "Email Adresse",
                              placeholder: "name@beispiel.com")
                   //.autocapitalization(.none) // dient dazu, dass die Email keine großbuchstaben hat, was ich erstmal ausgemacht habe, da Mamas Email Großbuchstaben besitzt 
                    
                    InputView(text: $passwort,
                              title: "Passwort",
                              placeholder: "Gebe dein Passwort ein",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // Sign in button
                
                Button {
                    print("Log user in..")
                } label: {
                    HStack{
                        Text("Anmelden")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)

                Spacer()
                
                // Sign up button
                
                NavigationLink {
                    RegistrierenView()
                        //.navigationBarBackButtonHidden(true) Damit kann oben Links das Back ausblendne
                } label: {
                    HStack(spacing: 2){
                        Text("Du hast noch kein Account?")
                        Text("Registrieren")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
   
}

#Preview {
    LoginViewSwiftUIView()
}
