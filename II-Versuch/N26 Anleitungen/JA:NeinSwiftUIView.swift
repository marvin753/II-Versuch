//
//  JA:NeinSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 06.04.24.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct JA_NeinSwiftUIView: View {
    var body: some View {
        VStack(){
            Button(action: {}) {
                NavigationLink(destination: Uberweisen_Neue_PersonSwiftUIView()) {
                    Text("Überweinung, an eine neue Person")
                }
            }
            .buttonStyle(GrowingButton())
            .padding()
            Button(action: {}) {
                NavigationLink(destination: UberweisungSwiftUIView()) {
                    Text("Überwesung an eine Person, der ich in der Vergangenheit schon Mal Geld überwiesen habe.")
                }
            }
            .buttonStyle(GrowingButton())
            
        }
        .position(x: 195, y: 300)
        Spacer()
            GroupBox("Beschreibung:"){
                Text("Klicke auf den Text, der das erfüllt, wonach du suchst.")
                    .padding()
        }
        .padding()
    }
}

#Preview {
    JA_NeinSwiftUIView()
}
