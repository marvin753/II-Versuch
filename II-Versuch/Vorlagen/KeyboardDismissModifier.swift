//
//  KeyboardDismissModifier.swift
//  LeichtGemacht
//
//  Created by Marvin Barsal on 28.07.24.
//

import SwiftUI

// View Extension and Custom Modifier
extension View {
    func hideKeyboardOnTap() -> some View {
        self.modifier(HideKeyboardOnTapModifier())
    }
}

struct HideKeyboardOnTapModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                hideKeyboard()
            }
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


