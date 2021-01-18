//
//  Todos.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-18.
//

import SwiftUI
import Firebase

class TodosViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func addTodo(title: String, desc: String) {
        
        guard let userUid = userSession?.uid else { return }
        
        let data = [ "title" : title,
                     "desc" : desc,
                     "uid": userUid
        ]
        
        COLLECTION_TODOS.document(userUid).setData(data) {
            _ in
                print("DEBUG: Successfully uploaded user todo..")
        }
    }
}

