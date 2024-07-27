//
//  UberweisungSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 06.04.24.
//

import SwiftUI
struct UberweisungSwiftUIView: View {
    
  private let anleitung: [(imageName: String, text: String)] = [
        ("StartseiteU", "Klicke auf den rot eingekreisten Pfeil." ),
        ("Suchleiste", "Gebe hier nun den Namen der Person ein, der du Geld Überweisen willt. Ich möchte Ute Barsal Geld überweisen, weswgen ich dort ihr Namen eingebe"),
        ("uberweisung1", "Um Geld an Ute Barsal zu überweisen, wähle ihr N26 Konto aus, erkennbar am Banklogo neben ihrem Namen unten rechts. Siehe Pfeil."),
        ("uberweisung2", "Nun wähle ein Betrag aus, den du Überweisen willst. Bei dem Pfiel siehst du dein eingeben Betrag"),
        ("uberweisung3", "Drücke nun auf weiter, um deine Banküberweisung fortzuführen"),
        ("uberweisung4", "Klicke auf Fortsetzten. Bei dem Pfeil siehst du nun mal dein Betrag den du Überweisen willst"),
        ("uberweisung5", "Klicke nun bei der Überweisungsart auf Echtszeitüberweisung und Bestätige diese"),
        ("uberweisung6", "Überprüfe deine Überweisung und klicke auf Weiter, wenn alles korrekt ist. Bei Unstimmigkeiten nutze den Pfeil oben links, um zurückzugehen."),
        ("uberweisung7", "Gebe hier nun dein Pin ein"),
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



#Preview {
    UberweisungSwiftUIView()
}
