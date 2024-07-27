//
//  IBANSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 30.03.24.
//

import SwiftUI

struct IBANSwiftUIView: View {
    var body: some View {
        Layout_VorlageSwiftUIView(instructions: [
            (imageName: "Startseite", text: "Das was du sieht ist hier gerade deine Startseite, die siehst du immer, sobald du N26 öffnest. Um nun deien IBAN zu finden, musst du oben rechts auf MB klicken."),
            (imageName: "Ubersicht", text: "Nun musst du auf den rot Makierten Kasten klicken."),
            (imageName: "IBAN", text: "In dem rot makierten Feld, steht nun deine IBAN"),
            
        ])
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
