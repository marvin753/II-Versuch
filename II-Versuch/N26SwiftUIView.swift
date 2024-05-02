//
//  N26SwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.03.24.
//

import SwiftUI

struct N26SwiftUIView: View {
    var body: some View {
        ZStack(){

            InnAppImageSwiftUIView(imageName: "N26Icon")
            
            VStack{
                Spacer()
                    .frame(height: 100)
                List(){
                    NavigationLink(destination: IBANSwiftUIView())
                    {Text("Wo steht meine IBAN")}
                    NavigationLink(destination: JA_NeinSwiftUIView())
                    {Text("Geld Überweisen")}
                        .zIndex(2.0)
                    
                }
            }
            .navigationTitle("N26")
        }
    }
}
#Preview {
    N26SwiftUIView()
}



