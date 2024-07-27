//
//  NavigationArrowsViewSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 06.04.24.
//

import SwiftUI

struct NavigationArrowsViewSwiftUIView: View {
    let onLeftArrowTapped: () -> Void
    let onRightArrowTapped: () -> Void
    let isLeftArrowEnabled: Bool
    let isRightArrowEnabled: Bool
    
    
    var body: some View {
        HStack {
            Button(action: onLeftArrowTapped){
                Image(systemName: "chevron.left")
                    .font(.largeTitle)
            }
            .disabled(!isLeftArrowEnabled)
            
            Spacer()
            
            Button(action: onRightArrowTapped){
                Image(systemName: "chevron.right")
                    .font(.largeTitle)
            }
            .disabled(!isRightArrowEnabled)
        }
        .padding()
        }
    }

// MARK: Habe die Preview rausgenommen, da sie nur für Fehler sorgte 
