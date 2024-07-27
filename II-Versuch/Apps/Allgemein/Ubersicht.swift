//
//  Ubersicht.swift
//  LeichtGemacht
//
//  Created by Marvin Barsal on 29.07.24.
//

import SwiftUI

struct Ubersicht: View {
    var body: some View {
    
    GenericSwiftUIView(iconName: "EinstellungsIcon", navigationTitle: "Einstellungen", sections:[
      SectionInfo(header: "Allgemein", items: [
            
        NavigationItem(destination: AnyView(Passwortfinden()), title: "Passwörter finde in Einstellungen"),
           
        NavigationItem(destination: AnyView(Disyplay_ausschlaten()), title: "Handy Bildschrim Sperren"),
            
        ])
    ])
    
    //Hier werde ich genauso wie in N26SwiftUIView das App Icon mit den ganuen Anleitungen anzeigen in eine Liste & Section AddMusik
}
}

#Preview {
    Ubersicht()
}

