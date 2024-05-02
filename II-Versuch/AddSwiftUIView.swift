//
//  AddSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.03.24.
//

import SwiftUI

struct AddSwiftUIView: View {
    @State private var app: String = ""  // State-Variable zur Speicherung der Eingabe
    @State private var probelm: String = ""
    @State private var ziel: String = ""
  
    
    
    var body: some View {
        
        Form {
            Section(header: Text("Um welche App geht es?")) {
                TextField("App Name", text: $app)
            }
            Section(header: Text("Was genau ist dein Problem?")) {
                TextField("Problem beschreibung", text: $probelm)
            }
            Section(header: Text("Was willst du wissen?")) {
                TextField("Antwort", text: $ziel)
            }
            
        }
    }
}

#Preview {
    AddSwiftUIView()
}

