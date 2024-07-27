//
//  GenericSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

public struct GenericSwiftUIView: View {
    var iconName: String
    var navigationTitle: String
    var sections: [SectionInfo]

    public var body: some View {
        ZStack {
            InnAppImageSwiftUIView(imageName: iconName)

            VStack {
                Spacer().frame(height: 100)

                List {
                    ForEach(sections, id: \.header) { section in
                        Section(header: Text(section.header).textCase(nil)) {
                            ForEach(section.items, id: \.self) { item in
                                NavigationLink(destination: item.destination) {
                                    Text(item.title)
                                }
                                // zIndex wurde entfernt
                            }
                        }
                    }
                }
                .navigationTitle(navigationTitle)
            }
        }
    }
}

public struct SectionInfo: Hashable {
    let header: String
    let items: [NavigationItem]
}

public struct NavigationItem: Hashable {
    let destination: AnyView
    let title: String

    public static func == (lhs: NavigationItem, rhs: NavigationItem) -> Bool {
        lhs.title == rhs.title
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}



/**             
 
 Beispiel für die Verwendung der generischen Komponente:
 
 struct ContentView: View {
     var body: some View {
         GenericSwiftUIView(iconName: "N26Icon", navigationTitle: "N26", sections: [
             SectionInfo(header: "Allgemein", items: [
                 NavigationItem(destination: AnyView(IBANSwiftUIView()), title: "Wo steht meine IBAN"),
                 NavigationItem(destination: AnyView(LoginViaPasswort()), title: "Anmelden in N26 via Passwort")
             ]),
             SectionInfo(header: "Überweisung", items: [
                 NavigationItem(destination: AnyView(UberweisungSwiftUIView()), title: "Wiederholte Überweisung"),
                 NavigationItem(destination: AnyView(Neue_Person_Uberweisung()), title: "Überweisung an eine neue Person")
             ])
         ])
     }
 }
 */
