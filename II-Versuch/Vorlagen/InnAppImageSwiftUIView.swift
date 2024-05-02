//
//  InnAppImageSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 21.04.24.
//

import SwiftUI

struct InnAppImageSwiftUIView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 78.0, height: 78.0)
            .listRowInsets(EdgeInsets())
            .position(x: 196, y: 50)
            .padding(.bottom)
            .zIndex(1.0)
    }
}


/**
 #Preview {
     InnAppImageSwiftUIView()
 }
 */
