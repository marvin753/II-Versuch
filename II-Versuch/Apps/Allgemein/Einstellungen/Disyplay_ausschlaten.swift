//
//  Disyplay_ausschlaten.swift
//  LeichtGemacht
//
//  Created by Marvin Barsal on 29.07.24.
//

import SwiftUI

struct Disyplay_ausschlaten: View {
    var body: some View {
        Layout_VorlageSwiftUIView(instructions: [
            
            (imageName: "Y1", text: "Sobald du in den Einstellungen bist, wiche mit deinem finger in Pfeilrichtung, bis du Anzeige & Helligkeit findest"),
            (imageName: "Y2", text: "Wische auch hier wieder in Pfeilrichtung und klicke dann auf Automatische Sperre"),
            (imageName: "Y3", text: "Hier kannst du nun wählen, wann sich dein Handy wieder automatisch sperren soll"),
            
        ])
    }
}


#Preview {
    Disyplay_ausschlaten()
}
