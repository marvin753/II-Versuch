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
            Image("N26Icon")
                .resizable()
                .frame(width: 78.0, height: 78.0)
                .listRowInsets(EdgeInsets())
                .position(x: 196, y: 50)
                .padding(.bottom)
                .zIndex(1.0)
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

