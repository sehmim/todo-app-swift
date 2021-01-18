//
//  Todo.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-18.
//

import Foundation

struct Todo: Identifiable {
    let id: String
    let title: String
    let desc: String

    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.title = dictionary["email"] as? String ?? ""
        self.desc = dictionary["username"] as? String ?? ""
    }
}
