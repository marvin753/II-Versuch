//
//  BeispielSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 27.04.24.
//

import SwiftUI

struct BeispielSwiftUIView: View {
    let imageName: String
    let title: String
    let tinColor: Color
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    BeispielSwiftUIView(imageName: "gear", title: "Version", tinColor: Color(.systemGray))
}
