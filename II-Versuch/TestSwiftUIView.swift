//
//  TestSwiftUIView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 12.04.24.
//

import SwiftUI

struct TestSwiftUIView: View {
    var body: some View {
        Layout_VorlageSwiftUIView(instructions: [
            ("IBAN", "Test verhjhhdihviwhrv ihrihiwhifhwrihfih fhrwifhihf hfihfihifhiwhfhwilfhiwhfi h fhiwhfihwf ihfhwhfihfihf hfhhwfi hf h hefihwifiwh whfhwifhiwhfisuch"),
            ("Startseite", "Moin wie gehts euch"),
            ("Ubersicht", "Es funktioniert")
        ])
    }
}

#Preview {
    TestSwiftUIView()
}
