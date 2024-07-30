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
<<<<<<< HEAD
    @State private var isImageFullScreen = false
=======
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
    
    init(instructions: [(imageName: String, text: String)]) {
        self.instructions = instructions
    }
    
<<<<<<< HEAD
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                if isImageFullScreen {
                    ZStack(alignment: .topTrailing) {
                        Image(instructions[currentIndex].imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geometry.size.width, maxHeight: geometry.size.height)
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                            .background(Color.white)
                            .edgesIgnoringSafeArea(.all)
                            .onTapGesture {
                                withAnimation {
                                    isImageFullScreen.toggle()
                                }
                            }
                        
                        Button(action: {
                            withAnimation {
                                isImageFullScreen.toggle()
                            }
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.black.opacity(0.6))
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                } else {
                    Spacer()
                    
                    Image(instructions[currentIndex].imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width * 0.8)
                        .onTapGesture {
                            withAnimation {
                                isImageFullScreen.toggle()
                            }
                        }
                    
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
                    
                    GroupBox("Beschreibung:") {
                        Text(instructions[currentIndex].text)
                            .padding()
                    }
                    .padding()
                }
            }
            .padding(.bottom, isImageFullScreen ? 0 : 20) // optional padding adjustment
        }
    }
}

struct Layout_VorlageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Layout_VorlageSwiftUIView(instructions: [
            (imageName: "Bestellen1", text: "Du kannst nun oben in der Suchleiste nach Produkten suchen. Wenn du beits schon ein Produkt hast, welches du bestllen willst, klicke weiter in der Anleitung."),
            (imageName: "Bestellen2", text: "Hier gibst du nun dein Produkt ein, welches du suchst. In meinem Fall war es ein Basecap für Herren")
        ])
    }
}

=======
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
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
// MARK: Die nachfolgende Komponennte ist eine Vorlage, es behinhaltet die GroupBox, die Navigationspfeile auf beiden Seiten und das Image selbst. Natürlich muss man den Namen des Fotos wie auch ein Beschreibungstext dazu schreiben, damit am Ende auch was angezeit wird. Hier ein Beispiel, was im body stehen muss:
/**
 Layout_VorlageSwiftUIView(instructions: [
     ("IBAN", "Test versuch"),
     ("Startseite", "Moin wie gehts euch"),
     ("Ubersicht", "Es funktioniert")
 ])
 */
