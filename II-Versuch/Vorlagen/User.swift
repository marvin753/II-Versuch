//
//  User.swift
//  II-Versuch
//
//  Created by Marvin Barsal on 03.05.24.
//

import Foundation

public struct User: Identifiable, Codable {
    public var id: String
    public var fullName: String
    public var username: String
    public var password: String
    public var role: UserRole

    public var initials: String {
        get {
            fullName.components(separatedBy: " ").reduce("") { ($0 == "" ? "" : String($0.first!)) + String($1.first!) }
        }
    }
}

public enum UserRole: String, Codable {
    case admin = "admin"
    case mother = "mother"
    case standard = "standard"
}



