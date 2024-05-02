//
//  AuthViewModel.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.04.24.
//

import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        
    }
    
    func signIn(withEmail email: String, passwort: String) async throws {
        
    }
    
    func createUser(withEmail email: String, passowrt: String, fullName: String) async throws {
        
    }
    
    func signOut(){
        
    }
    
    func deleteAccount() {
        
    }
    
    func fetchUser() async {
        
    }
}
