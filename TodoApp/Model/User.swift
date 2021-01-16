//
//  User.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import Foundation

struct User: Identifiable {
    let id: String
    let email: String
    let username: String
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
    }
}
