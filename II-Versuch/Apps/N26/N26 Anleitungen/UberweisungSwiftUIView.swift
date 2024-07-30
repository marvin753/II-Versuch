//
//  UberweisungSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 06.04.24.
//

<<<<<<< HEAD
import SwiftUI
struct UberweisungSwiftUIView: View {
    var body: some View {
        
        Layout_VorlageSwiftUIView(instructions: [
            (imageName: "StartseiteU", text: "Klicke auf den rot eingekreisten Pfeil."),
            (imageName: "Suchleiste", text: "Gebe hier nun den Namen der Person ein, der du Geld Überweisen willt. Ich möchte Ute Barsal Geld überweisen, weswgen ich dort ihr Namen eingebe"),
            (imageName: "uberweisung1", text: "Um Geld an Ute Barsal zu überweisen, wähle ihr N26 Konto aus, erkennbar am Banklogo neben ihrem Namen unten rechts. Siehe Pfeil."),
            (imageName: "uberweisung2", text: "Nun wähle ein Betrag aus, den du Überweisen willst. Bei dem Pfiel siehst du dein eingeben Betrag"),
            (imageName: "uberweisung3", text: "Drücke nun auf weiter, um deine Banküberweisung fortzuführen"),
            (imageName: "uberweisung4", text: "Klicke auf Fortsetzten. Bei dem Pfeil siehst du nun mal dein Betrag den du Überweisen willst"),
            (imageName: "uberweisung5", text: "Klicke nun bei der Überweisungsart auf Echtszeitüberweisung und Bestätige diese"),
            (imageName: "uberweisung6", text: "Überprüfe deine Überweisung und klicke auf Weiter, wenn alles korrekt ist. Bei Unstimmigkeiten nutze den Pfeil oben links, um zurückzugehen."),
            (imageName: "uberweisung7", text: "Gebe hier nun dein Pin ein"),
        ])
    }
}
=======

import SwiftUI
struct UberweisungSwiftUIView: View {
    
  private let anleitung: [(imageName: String, text: String)] = [
        ("StartseiteU", "Klicke auf den rot eingekreisten Kreis." ),
        ("Suchleiste", "Gebe hier nun den Namen der Person ein, der du Geld Überweisen willt. ACHTUNG: Du kannst in der Suchleiste nur Personen finden, den du in der Verganenheit schon Mal Geld überwiesen hast."),
    ]
    
    @State private var start = 0
    
    var body: some View {
       VStack {
                Image(anleitung[start].imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                HStack{
                    Button(action: {
                        if self.start > 0 {
                            self.start -= 1
                        }
                    }){
                        Image(systemName: "chevron.left")
                            .font(.largeTitle)
                            .padding(.horizontal)
                        
                    }
                    .disabled(start == 0)
                    
                    Spacer()
                    
                    Button(action: {
                        if self.start < self.anleitung.count - 1{
                            self.start += 1
                        }
                    }) {
                        Image(systemName: "chevron.right")
                            .font(.largeTitle)
                            .padding(.horizontal)
                    }
                    .disabled(start == self.anleitung.count - 1 )
                }
            }
            GroupBox("Beschreibung:"){
                Text(anleitung[start].text)
                    .padding()
            }
            .padding()
        }
    }

>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd


#Preview {
    UberweisungSwiftUIView()
}
