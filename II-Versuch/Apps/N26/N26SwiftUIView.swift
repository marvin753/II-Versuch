//
//  N26SwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.03.24.
//

import SwiftUI

struct N26SwiftUIView: View {
    var body: some View {
        ZStack{
            
            InnAppImageSwiftUIView(imageName: "N26Icon")
            
            VStack{
                Spacer()
                    .frame(height: 100)
                
                List(){
                    Section(header: Text("Allgemein").textCase(nil)){
                        NavigationLink(destination: IBANSwiftUIView()){
                            Text("Wo steht meine IBAN")
                        }
                        NavigationLink(destination: LoginViaPasswort()){
                            Text("Anmelden in N26 via Passwort")
                        }
                    }
                    
                    Section(header: Text("Überweisung").textCase(nil)) {
                        NavigationLink(destination: UberweisungSwiftUIView()) {
                            Text("Wiederholte Überweisung")
                                .zIndex(2.0)
                        }
                        NavigationLink(destination: Neue_Person_Uberweisung()) {
                            Text("Überweisung an eine neue Person")
                                .zIndex(2.0)
                        }
                        
                        
                    }
                }
                .navigationTitle("N26")
            }
        }
    }
}

    
#Preview {
    N26SwiftUIView()
}
    
    

