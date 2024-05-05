//
//  InputView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)

            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .padding(10)  // Fügt Innenabstand hinzu
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(.systemGray5), lineWidth: 1)) // Umrandung
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .padding(10) // Fügt Innenabstand hinzu
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(.systemGray5), lineWidth: 1)) // Umrandung
            }
        }
        .padding(.horizontal) // Fügt horizontalen Abstand zur besseren Abgrenzung hinzu
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email Adresse", placeholder: "name@beispiel.com")
}
