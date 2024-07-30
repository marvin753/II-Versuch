//
//  N26SwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.03.24.
//

import SwiftUI

struct N26SwiftUIView: View {
<<<<<<< HEAD
    
    var body: some View {
        ZStack{
            
        GenericSwiftUIView(iconName: "N26Icon", navigationTitle: "N26", sections:[
            SectionInfo(header: "Allgemein", items: [
                    
                NavigationItem(destination: AnyView(IBANSwiftUIView()), title: "Wo steht meine IBAN"),
                    
                NavigationItem(destination: AnyView(LoginViaPasswort()), title: "Anmelden in N26 via Passwort"),
                ]),
                
            SectionInfo(header: "Überweisung", items: [
                    
                NavigationItem(destination: AnyView(UberweisungSwiftUIView()), title: "Wiederholte Überweisung"),
                    
                NavigationItem(destination: AnyView(Neue_Person_Uberweisung()), title: "Überweisung an eine neue Person"),
                    
                ])
                
            ])
=======
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
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
        }
    }
}

<<<<<<< HEAD

#Preview {
    N26SwiftUIView()
}
=======
    
#Preview {
    N26SwiftUIView()
}
    
    
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd

