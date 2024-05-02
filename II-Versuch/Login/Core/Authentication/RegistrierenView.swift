//
//  RegistrierenView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 27.04.24.
//

import SwiftUI

struct RegistrierenView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var passwort = ""
    @State private var passwortbetsätigen = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewMidel:  AuthViewModel
    
    var body: some View {
        VStack{
            // Image
            //TODO: Das Login Bild noch ändern
            Image("N26Icon")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)
            
            VStack(spacing: 24){
                InputView(text: $email,
                          title: "Email Adresse",
                          placeholder: "name@beispiel.com")
                //.autocapitalization(.none) // dient dazu, dass die Email keine großbuchstaben hat, was ich erstmal ausgemacht habe, da Mamas Email Großbuchstaben besitzt
                
                    InputView(text: $fullname,
                              title: "Vollständiger Name",
                              placeholder: "Gebe dein Vor- und Nachnamen an")
                    //.autocapitalization(.none) // dient dazu, dass die Email keine großbuchstaben hat, was ich erstmal ausgemacht habe, da Mamas Email Großbuchstaben besitzt
                    
                    InputView(text: $passwort,
                              title: "Passwort",
                              placeholder: "Gebe dein Passwort ein",
                              isSecureField: true)
                
                InputView(text: $passwortbetsätigen,
                          title: "Passwort betsätigen",
                          placeholder: "Bestätige dein Passwort",
                          isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
            
            Button {
                print("Sign user up..")
            } label: {
                HStack{
                    Text("Registrieren")
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
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 2){
                    Text("Du hast schon ein Account?")
                    Text("Login")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }

        }
    }
}


#Preview {
    RegistrierenView()
}
