//
//  Auth.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import Foundation
import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var isAuthenticating: Bool = false
    @Published var error: Error?
    @Published var user: User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password){
            result, error in
            if let error = error {
                print("DEBUG: Error ->\(error.localizedDescription)")
                return
            }

            self.userSession = result?.user
            print("DEBUG: Logged in Successfully!")

        }
    }

    func registerUser(email: String, password: String, username: String, fullname: String) {

//        guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else { return }
//        let filename = NSUUID().uuidString
//        let storageRef = Storage.storage().reference().child(filename)

//        storageRef.putData(imageData, metadata: nil) {
//            _, error in
//            if let error = error {
//                print("DEBUG: Failed to uplead image \(error.localizedDescription)")
//                return
//            }
//            print("DEBUG: Successfully uploaded user photo..")

//            storageRef.downloadURL{
//                url,_ in
//                guard let profileImageUrl = url?.absoluteString else { return }

                Auth.auth().createUser(withEmail: email, password: password){
                    result, error in
                    if let error = error {
                        print("DEBUG: Error ->\(error.localizedDescription)")
                        return
                    }

                    guard let user = result?.user else { return }

                    let data = [ "email" : email,
                                 "username" : username.lowercased(),
                                 "fullname" : fullname,
//                                 "profileImageUrl" : profileImageUrl,
                                 "uid": user.uid
                    ]

                    Firestore.firestore().collection("users").document(user.uid).setData(data) {
                        _ in
                            self.userSession = result?.user
                            print("DEBUG: Successfully uploaded user data..")
                    }
                }
//            }
//        }

    }
    
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
    
//    func fetchUser(){
//        guard let uid = userSession?.uid else { return }
//
//        Firestore.firestore().collection("users").document(uid).getDocument {
//            snapshot, _ in
//            guard let data = snapshot?.data() else { return }
//            let user = User(dictionary: data)
//            print("DEBUG: User is \(user.username)")
//        }
//    }
}
