//
//  Passwortfinden.swift
//  LeichtGemacht
//
//  Created by Marvin Barsal on 29.07.24.
//

import SwiftUI

struct Passwortfinden: View {
    var body: some View {
        Layout_VorlageSwiftUIView(instructions: [
    
            (imageName: "X2", text: "Sobald du in den Einstellungen bist, wiche mit deinem finger in Pfeilrichtung, bis du Passwörter findest"),
            (imageName: "X3", text: "Hier musst du nun deine Gesichtserkennung machen, damit du auf deine Passwörter zugreifen kannst"),
            (imageName: "X4", text: "Tippe nun auf die App, bei welcher du dein Passwort sehen willst"),
            (imageName: "X5", text: "Tippe hier auf Passwort, damit du dein Passwort sehen kannst"),
           
            
            
            
        ])
    }
}


#Preview {
    Passwortfinden()
}
