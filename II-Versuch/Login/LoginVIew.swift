//
//  LoginVIew.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 01.05.24.
//

import SwiftUI

struct LoginVIew: View {
    @State private var email = ""
    @State private var passwort = ""
    var body: some View {
        VStack{
            Image("N26Icon")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)
            
            VStack(spacing: 24){
                InputView(text: $email,
                          title: "Email Adresse",
                          placeholder: "name@beispiel.com")
                
                InputView(text: $passwort,
                          title: "Passwort",
                          placeholder: "Gebe dein Passwort ein",
                          isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Spacer()
            
            Button {
                print("Moin")
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
        }
    }
}

#Preview {
    LoginVIew()
}
