//
//  HomeMenü.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 25.03.24.
//

import SwiftUI

struct AppIcon: Identifiable {
    let id = UUID()
    let imageName: String
    let appName: String
    let destination: AnyView
}

struct HomeMenu_: View {
    @State private var searchText = ""
    @State private var showNoResults = false // Zustand für die Anzeige der Nachricht "Keine Ergebnisse gefunden"
    
    //AppIcon ist dafür zuständig, dass man hier die unterschiedlichsten Apps hinzufügen kann.
    let appIcons: [AppIcon] = [
        AppIcon(imageName: "N26Icon", appName: "N26", destination: AnyView(N26SwiftUIView())),
        AppIcon(imageName: "AppleMusikIcon", appName: "Musik", destination: AnyView(AppleMusikView())),
        AppIcon(imageName: "AmazonAppIcon", appName: "Amazon", destination: AnyView(AmazonView())),
    ]
    
    var filteredAppIcons: [AppIcon] {
        if searchText.isEmpty {
            return appIcons
        } else {
            return appIcons.filter { $0.appName.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView{
            VStack {
                Suchleiste(text: $searchText)
                    .padding()
                
                if filteredAppIcons.isEmpty  {
                    Text("Keine Ergebnisse gefunden")
                        .foregroundColor(.secondary)
                        .font(.custom("Helvetica-Bold", size: 16)) // 16 ist die Schriftgröße
                }
                
                ScrollView{
                    //Hiermit kann man den Abstand und die Anzahl der App Icons festlegen
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 4),      spacing: 28){
                        ForEach(filteredAppIcons) { appIcon in
                            NavigationLink(destination: appIcon.destination){
                                VStack {
                                    Image(appIcon.imageName)
                                        .resizable()
                                        .frame(width: 78.0, height: 78.0)
                                        .listRowInsets(EdgeInsets())// Das macht den weißen Rand weg
                                    Text(appIcon.appName)
                                        .foregroundColor(.black)
                                        //.padding(.top, 4)
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
            //.navigationTitle("Apps")
        }
    }
}



#Preview {
    HomeMenu_()
}







