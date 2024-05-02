//
//  Test.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 06.04.24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex = 0
    
    let imageNames = ["photo1", "photo2", "photo3"] // Namen der Bilder
    
    var body: some View {
        VStack {
            Image(imageNames[currentIndex]) // Zeigt das aktuelle Bild an
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            HStack {
                Button(action: {
                    // Gehe zum vorherigen Bild, wenn möglich
                    if self.currentIndex > 0 {
                        self.currentIndex -= 1
                    }
                }) {
                    Image(systemName: "arrow.left.circle")
                        .font(.largeTitle)
                }
                .disabled(currentIndex == 0) // Deaktiviere den Button, wenn wir das erste Bild erreicht haben
                
                Spacer()
                
                Button(action: {
                    // Gehe zum nächsten Bild, wenn möglich
                    if self.currentIndex < self.imageNames.count - 1 {
                        self.currentIndex += 1
                    }
                }) {
                    Image(systemName: "arrow.right.circle")
                        .font(.largeTitle)
                }
                .disabled(currentIndex == imageNames.count - 1) // Deaktiviere den Button, wenn wir das letzte Bild erreicht haben
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
