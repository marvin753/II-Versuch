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
<<<<<<< HEAD
        AppIcon(imageName: "EinstellungsIcon", appName: "Einstellungen", destination: AnyView(Ubersicht())),
=======
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
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
                
<<<<<<< HEAD
                ScrollView {
                    let spacing: CGFloat = 10
                    let sidePadding: CGFloat = UIScreen.main.bounds.width < 375 ? 20 : 16
                    let totalSpacing = spacing * 3
                    let availableWidth = UIScreen.main.bounds.width - (sidePadding * 2) - totalSpacing
                    let itemWidth = availableWidth / 4

                    let columns = Array(repeating: GridItem(.fixed(itemWidth), spacing: spacing), count: 4)
                                    
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(filteredAppIcons) { appIcon in
                        NavigationLink(destination: appIcon.destination) {
                            VStack {
                                
                                let iconSize: CGFloat = UIScreen.main.bounds.width < 375 ? 60 : 78
                                Image(appIcon.imageName)
                                    .resizable()
                                    .frame(width: iconSize, height: iconSize)
                                Spacer().frame(height: 4) // Fixed spacing between the icon and the text
                                Text(appIcon.appName)
                                    .foregroundColor(.black)
                                    .font(.system(size: 18))
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                                    .scaledToFit()
                                    .dynamicTypeSize(.medium ... .xxLarge)
                                }
                                .frame(width: itemWidth, height: itemWidth + 30) // Ensure the item has a fixed width and enough height
                            }
                        }
                    }
                    .padding(.horizontal, sidePadding)
                }
            }
=======
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
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
        }
    }
}


<<<<<<< HEAD
=======

>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
#Preview {
    HomeMenu_()
}





<<<<<<< HEAD
=======


>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
