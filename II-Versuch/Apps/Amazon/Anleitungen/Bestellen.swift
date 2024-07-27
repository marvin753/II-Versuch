//
//  Bestellen.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

struct Bestellen: View {
    var body: some View {
        Layout_VorlageSwiftUIView(instructions: [
            
            (imageName: "Bestellen1", text: "Du kannst nun oben in der Suchleiste nach Produkten suchen. Wenn du beits schon ein Produkt hast, welches du bestllen willst, klicke weiter in der Anleitung."),
            (imageName: "Bestellen2", text: "Hier gibst du nun dein Produkt ein, welches du suchst. In meinem Fall war es ein Basecap für Herren "),
            (imageName: "Bestellen3", text: "Da es mir hier schon angezeigt wurde, habe ich nun auf das Wort geklickt"),
            (imageName: "Bestellen4", text: "Nun kannst du dich hier durchscrollen, bis zu bei dem Produkt angekommen bist, welches du suchst."),
            (imageName: "Bestellen5", text: "Oben links könntest du nun auf den Pfeil klicken und weitersuchen, falls du das falsche Produkt ausgewählt hättest. Da es bei mir nicht der Fall ist und ich das Basecap bestellen will, scroll ich nun weiter runter, bis ich eine gelbe Box names In den Einkaufswagen sehe und klicke auf die Box"),
            (imageName: "Bestellen6", text: "Nun wird mir bestätigt, dass ich das Produktz in den Einkaufswagen gelegt habe."),
            (imageName: "Bestellen7", text: "Nun klicke ich auf den Einkaufswagen. Dies ist das Rot eingekreise Bild "),
            (imageName: "Bestellen8", text: "Nun drücke ich auf die gelbe Box, ZUR KASSE GEHEN "),
            (imageName: "Bestellen9", text: "Ich Überprüfe nun noch, ob meine bestelladresse die richige ist. Wenn alle Angaben stimmten drücke nun auf Kaufen"),
            
            
        ])
        //Hier zeige ich, wie man etwas über Amazon bestellt. Also in den Einkaufwagen legen und über den ganzen Bestellprozes
    }
}

#Preview {
    Bestellen()
}
