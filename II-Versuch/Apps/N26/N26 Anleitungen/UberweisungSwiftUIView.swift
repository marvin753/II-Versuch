//
//  UberweisungSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 06.04.24.
//


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



#Preview {
    UberweisungSwiftUIView()
}
