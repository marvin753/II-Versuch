//
//  IBANSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 30.03.24.
//

import SwiftUI

struct IBANSwiftUIView: View {
    
   private let anleitung: [(imageName: String, text: String)] = [
        ("Startseite", "Das was du sieht ist hier gerade deine Startseite, die siehst du immer, sobald du N26 öffnest. Um nun deien IBAN zu finden, musst du oben rechts auf MB klicken." ),
        ("Ubersicht", "Nun musst du auf den rot Makierten Kasten klicken."),
        ("IBAN", "In dem rot makierten Feld, steht nun deine IBAN")
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
    IBANSwiftUIView()
}
//GroupBox("Beschreibung:"){
    //VStack(){
        //Text("Das was du sieht ist hier gerade deine Startseite, die siehst du immer, sobald du N26 öffnest. Um nun deien IBAN zu finden, musst du oben rechts auf MB klicken.")




//Image(.startseite)
    //.resizable()
   // .scaledToFit() // MARK: Damit wird der Shreenshhot genau in dem vormat ausgeben, in dem es gemacht wurde. .scaledToFit() hätte man auch nutzen können, ist aber in meinem Fall nicht hilfreich.


/*
 .gesture(
     DragGesture()
         .onEnded{ value in
             if value.translation.width < 0 && start < anleitung.count - 1 {
                 start += 1
             } else if value.translation.width > 0 && start > 0 {
                 start -= 1
             }
         }
 )

 */
