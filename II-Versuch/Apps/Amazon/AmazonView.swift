//
//  AmazonView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 04.05.24.
//

import SwiftUI

struct AmazonView: View {
    var body: some View {
       
        GenericSwiftUIView(iconName: "AmazonAppIcon", navigationTitle: "Amazon", sections:[
          SectionInfo(header: "Allgemein", items: [
                
            NavigationItem(destination: AnyView(Bestellen()), title: "Wie man was bestellt"),
            
          ])
      ])
        
        //Hier werde ich genauso wie in N26SwiftUIView das App Icon mit den ganuen Anleitungen anzeigen in eine Liste & Section
    }
        
}


            
#Preview {
    AmazonView()
}
