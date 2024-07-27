//
//  SplashScreenView.swift
//  LeichtGemacht
//
//  Created by Marvin Barsal on 29.07.24.
//

//
//  SplashScreenView.swift
//  LeichtGemacht
//
//  Created by Marvin Barsal on 29.07.24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var logoOffset: CGFloat = 0

    var body: some View {
        ZStack {
            // Hintergrundfarbe der App
            Color("034C4A")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                    .frame(height: UIScreen.main.bounds.height / 3)
                
                // App Logo
                Image("AppIconImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .offset(y: logoOffset)
                    .onAppear {
                        withAnimation(.easeOut(duration: 1.5)) {
                            logoOffset = -(UIScreen.main.bounds.height / 3)
                        }
                    }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
