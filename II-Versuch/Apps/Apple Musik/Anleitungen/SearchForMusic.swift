//
//  SearchForMusic.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

struct SearchForMusic: View {
    var body: some View {
        
        Layout_VorlageSwiftUIView(instructions: [
            (imageName: "Startpunkt", text: "Sobald du die Musik App öffnest, musst du unten in der Suchleiste auf Mediathek Suchen klicken. Dass ist das ganz linke mit der Lupe darüber"),
            (imageName: "Suchen", text: "Nun kannst du oben in der suchleiste nach Liedern, Alben oder nach Sängern suchen."),
            (imageName: "SuchleisteSong", text: "Suche hier nach dem was du suchen möchstest. Ich habe in dem Beispiel nach einem Lied gesucht. Achte dabei, dass du Apple Musik ausgefählt hast und nicht Mediathek"),
            (imageName: "LiedSuchen", text: "Wie man sieht, habe ich nach dem Lied Astronaut gesucht. Nun wählt man den sänger aus, von dem man das Lied höhren möchte. Den Namen des Sängers findet man neben dem Titel. "),
            ])
        
        
        //Hier zeige ich, wie man in Apple Musik nach Musik sucht über die Suchleiste.
    }
}

#Preview {
    SearchForMusic()
}
