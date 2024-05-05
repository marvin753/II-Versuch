//
//  Suchleiste.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

public struct Suchleiste: View {
    @Binding var text: String
    
   public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color(.systemGray6))
                .frame(height: 36) // Anpassung der Höhe des grauen Kastens
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                
                TextField("Suchen", text: $text)
                    .padding(7)
                    .background(Color(.clear)) // Transparenter Hintergrund, um den grauen Kasten sichtbar zu machen
                    .cornerRadius(8)
                    
                
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .opacity(text.isEmpty ? 0 : 1)
                }
                .foregroundColor(.secondary)
            }
            .padding(.horizontal)
        }
    }
}

struct Suchleiste_Previews: PreviewProvider {
    @State static var searchText: String = ""

    static var previews: some View {
        Suchleiste(text: $searchText) // Verwendung eines Binding zum @State
            .previewLayout(.sizeThatFits) // Layout, das die Größe des Inhalts anpasst
            .padding() // Etwas Abstand rund um die Suchleiste
    }
}
