//
//  AdminView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import SwiftUI

struct AdminView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var selectedTabIndex = 0
    
    
    var body: some View {
        TabView (selection: $selectedTabIndex){
            AdminListView()
                .tabItem {
                    Label("Haus", systemImage: "house")
                }
                .tag(0)
            
            ProfileView()
                .tabItem {
                    Label("Konto", systemImage: "person.circle")
                }
                .tag(1)
        }
    }
}
struct AdminView_Previews: PreviewProvider {
    static var previews: some View {
        AdminView().environmentObject(AuthViewModel())
    }
}
