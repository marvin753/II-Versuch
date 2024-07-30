//
//  IBANSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 30.03.24.
//

import SwiftUI

struct IBANSwiftUIView: View {
<<<<<<< HEAD
    var body: some View {
        Layout_VorlageSwiftUIView(instructions: [
            (imageName: "Startseite", text: "Das was du sieht ist hier gerade deine Startseite, die siehst du immer, sobald du N26 öffnest. Um nun deien IBAN zu finden, musst du oben rechts auf MB klicken."),
            (imageName: "Ubersicht", text: "Nun musst du auf den rot Makierten Kasten klicken."),
            (imageName: "IBAN", text: "In dem rot makierten Feld, steht nun deine IBAN"),
            
        ])
=======
    
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
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
    }
}

#Preview {
    IBANSwiftUIView()
}
<<<<<<< HEAD







=======
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
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
