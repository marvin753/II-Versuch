//
//  AppleMusikView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

struct AppleMusikView: View {
    var body: some View {
        
        GenericSwiftUIView(iconName: "AppleMusikIcon", navigationTitle: "Musik", sections:[
          SectionInfo(header: "Allgemein", items: [
                
            NavigationItem(destination: AnyView(SearchForMusic()), title: "Nach Musik suchen"),
               
            NavigationItem(destination: AnyView(AddMusik()), title: "Musik der Mediathek hinzufügen"),
                
            ])
        ])
        
        //Hier werde ich genauso wie in N26SwiftUIView das App Icon mit den ganuen Anleitungen anzeigen in eine Liste & Section AddMusik
    }
}

#Preview {
    AppleMusikView()
}
