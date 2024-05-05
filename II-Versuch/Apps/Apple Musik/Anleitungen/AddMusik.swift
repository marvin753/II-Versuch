//
//  AddMusik.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

struct AddMusik: View {
    var body: some View {
        
        Layout_VorlageSwiftUIView(instructions: [
            (imageName: "Hinzufügen1", text: "Nun muss man auf die drei Punkte, neben dem Lied klicken"),
            (imageName: "Hinzufügen2", text: "Drücke nun auf ZUR MEDIATHEK HINZUFÜGEN"),
            (imageName: "Hinzufügen3", text: "Wüche nun ein wenig nach unten, sodass du die Zuletzt hinzuugefügten Lieder besser sehen kannst"),
            (imageName: "Hinzufügen4", text: "Nun kannst du auf das Bild klicken was links oben zu sehen ist, da dies das zuletzt hinzuugefügte Lied ist."),
            
        ])
        
        
        //Hier zeige ich an, wie man gesuchte Musik über die Suchleiste in seien Mediathek hinzufügt
    }
}

#Preview {
    AddMusik()
}
