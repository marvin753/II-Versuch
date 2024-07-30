//
//  ProfilView.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
<<<<<<< HEAD
    
=======
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
    var body: some View {
        VStack {
            List {
                Section {
                    HStack {
                        Text(authViewModel.currentUser?.initials ?? "")
<<<<<<< HEAD
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(authViewModel.currentUser?.fullName ?? "N/A")
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            
=======
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                                           
                     VStack(alignment: .leading, spacing: 4) {
                        Text(authViewModel.currentUser?.fullName ?? "N/A")
                             .fontWeight(.semibold)
                             .padding(.top, 4)
                                
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
                        }
                    }
                }
                
                Section(header: Text("Allgemein")) {
                    HStack {
                        SettingRowView(imageName: "gear",
                                       title: "Version",
                                       tintColor: Color(.systemGray))
                        
                        Spacer()
                        
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                Section(header: Text("Account")) {
                    Button {
                        // Logik zum Ausloggen
                        authViewModel.logout()
                    } label: {
                        SettingRowView(imageName: "arrow.left.circle.fill",
                                       title: "Ausloggen",
                                       tintColor: .red)
                    }
                }
<<<<<<< HEAD
                if UIScreen.main.bounds.width < 375 {
                    Text("Entwickelt mit ❤️ für meine Mutter")
                        .font(.subheadline) // Anpassung der Schriftgröße für kleinere iPhones
                        .minimumScaleFactor(0.5) // Minimale Skalierungsgröße
                        .lineLimit(1)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .listRowBackground(Color.clear)
                } else {
                    Text("Entwickelt mit ❤️ für meine Mutter")
                        .lineLimit(1)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .listRowBackground(Color.clear)
                }
                
            }
=======
                Text("Entwickelt mit ❤️ für meine Mutter ")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .listRowBackground(Color.clear)
                    
            }
           
>>>>>>> 2d239ae789422a1efc5fae9c65accdceac1119cd
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(AuthViewModel())
    }
}
