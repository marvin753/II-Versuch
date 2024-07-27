//
//  LoginViaPasswort.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

struct LoginViaPasswort: View {
    var body: some View {
        Layout_VorlageSwiftUIView(instructions: [
            
            (imageName: "NeueUberweisubng", text: "Drücke auf das Plus"),
            (imageName: "NeuUberweisen2", text: "Wähle nun die Option Banküberweisung aus"),
            (imageName: "NeuUberweisen3", text: "Gebe hier nun den Namen & die IBAN an"),
            
        ])
    }
}

#Preview {
    LoginViaPasswort()
}
