//
//  Layout.VorlageSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 12.04.24.
//

import SwiftUI

public struct Layout_VorlageSwiftUIView: View {
    
    private let instructions: [(imageName: String, text: String)]
    
    @State private var currentIndex = 0
    
    init(instructions: [(imageName: String, text: String)]) {
        self.instructions = instructions
    }
    
   public var body: some View {
        VStack {
            Image(instructions[currentIndex].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Button(action: {
                    if self.currentIndex > 0 {
                        self.currentIndex -= 1
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                        .padding(.horizontal)
                }
                .disabled(currentIndex == 0)
                
                Spacer()
                
                Button(action: {
                    if self.currentIndex < self.instructions.count - 1 {
                        self.currentIndex += 1
                    }
                }) {
                    Image(systemName: "chevron.right")
                        .font(.largeTitle)
                        .padding(.horizontal)
                }
                .disabled(currentIndex == self.instructions.count - 1)
            }
        }
        .padding()
        
        GroupBox("Beschreibung:") {
            Text(instructions[currentIndex].text)
                .padding()
        }
        .padding()
    }
}
