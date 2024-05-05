//
//  ContentView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 25.03.24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var selectedTabIndex = 0
    
    
    var body: some View {
        TabView (selection: $selectedTabIndex){
            HomeMenu_()
                .tabItem {
                    Label("Haus", systemImage: "house")
                }
                .tag(0)
            
            AddSwiftUIView()
                .tabItem {
                    Label("Hinzufügen", systemImage: "doc.badge.plus")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Label("Konto", systemImage: "person.circle")
                }
                .tag(2)
        }        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AuthViewModel())
    }
}


//MARK: TODO:                                                                                   Limitierung, dass man nicht ganz so weit nach oben scrollen kann & die Apps etwas weiter nach unten packen, da noch oben rechts ein Kreis kommt etc. 

//MARK: TODO:                                                                                               Oben rechts kommt dann ein Kreis, bei dem man dann auf sein Account kommt um sich auszuloggen beispielsweise. Diese Änderung muss wahrscheinlich in ContentView vorgenommen werden. 

//MARK: TODO:                                                                                                       Dafür sorgen, dass die Menüleiste unten, nur angezeit wird, solange man sich auf der Startseite befindet. Heißt, sobald man auf N26 beispielsweise klickt, wird die Menüleiste ausgeblendet. Diese Änderung muss wahrscheinlich in ContentView vorgenommen werden.

//MARK: TODO:                                                                                                       Man soll über dem Screenshot sehen, in welcher Anleitung man gerade ist. Beispielsweise: "Wo steht meine IBAN". Das soll über dem Image stehen. Diese änderung muss wahrscheinlich im Layout.Vorlage vorgenmommen werden.
