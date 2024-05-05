//
//  InnAppImageSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 21.04.24.
//

import SwiftUI


public struct InnAppImageSwiftUIView: View {
    var imageName: String
            
   public var body: some View {
                
                Image(imageName)
                    .resizable()
                    .frame(width: 78.0, height: 78.0)
                    .listRowInsets(EdgeInsets())
                    .position(x: 196, y: 50)
                    .padding(.bottom)
                    .zIndex(1.0)
            }
        }
        
        
//MARK: Die InnAppImage Komoonente bildet das oben stehende App Icon ab, mit den verschiednene Bild konfigurationenen.
//Beispielanwendung:  InnAppImageSwiftUIView(imageName: "N26Icon")
        
        
/**
#Preview {
         InnAppImageSwiftUIView()
}
*/
        
