//
//  User.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 28.04.24.
//

import Foundation

struct User: Identifiable, Codable{
    let id: String
    let fullName: String
    let email: String
    
    var initials: String{
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        
        return ""
        //Hier könnte man unter dem return ein blick packen. Also dass der retrun ein Imnage ausgeibt.
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullName: "Ute Barsal", email: "tesr@gmail.com")
}



