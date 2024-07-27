//
//  N26SwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.03.24.
//

import SwiftUI

struct N26SwiftUIView: View {
    
    var body: some View {
        ZStack{
            
        GenericSwiftUIView(iconName: "N26Icon", navigationTitle: "N26", sections:[
            SectionInfo(header: "Allgemein", items: [
                    
                NavigationItem(destination: AnyView(IBANSwiftUIView()), title: "Wo steht meine IBAN"),
                    
                NavigationItem(destination: AnyView(LoginViaPasswort()), title: "Anmelden in N26 via Passwort"),
                ]),
                
            SectionInfo(header: "Überweisung", items: [
                    
                NavigationItem(destination: AnyView(UberweisungSwiftUIView()), title: "Wiederholte Überweisung"),
                    
                NavigationItem(destination: AnyView(Neue_Person_Uberweisung()), title: "Überweisung an eine neue Person"),
                    
                ])
                
            ])
        }
    }
}


#Preview {
    N26SwiftUIView()
}

