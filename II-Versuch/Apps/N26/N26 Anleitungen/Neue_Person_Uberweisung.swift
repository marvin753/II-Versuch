//
//  Neue.Person.Uberweisung.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

struct Neue_Person_Uberweisung: View {
    var body: some View {
       
        Layout_VorlageSwiftUIView(instructions: [
            
            (imageName: "NeueUberweisubng", text: "Drücke auf das Plus"),
            (imageName: "NeuUberweisen2", text: "Wähle nun die Option Banküberweisung aus"),
            (imageName: "NeuUberweisen3", text: "Gebe hier nun den Namen & die IBAN an"),
            //TODO: Anleitung beenden
            
        ])
    }
}

#Preview {
    Neue_Person_Uberweisung()
}
