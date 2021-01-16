//
//  SignupView.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct SignupView: View {
    @State var email = ""
    @State var password = ""
    @State var fullname = ""
    @State var username = ""
    
    
    @ObservedObject var viewModel = AuthViewModel()

//    @EnvironmentObject var viewModel: AuthViewModel
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    
    var body: some View {
        VStack(spacing: 16) {
            Image("root")
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 130)
                .padding(.bottom, 80)
            
            CustomSecureField(text: $email, placeholder: Text("Email"), imageName: "envelope", isSecure: false)
                .background(Color.purple)
                .cornerRadius(50)
            
            CustomSecureField(text: $fullname, placeholder: Text("Full Name"), imageName: "person", isSecure: false)
                .background(Color.purple)
                .cornerRadius(50)

            CustomSecureField(text: $username, placeholder: Text("Username"), imageName: "person", isSecure: false)
                .background(Color.purple)
                .cornerRadius(50)
            
            CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock", isSecure: true)
                .background(Color.purple)
                .cornerRadius(50)
            
            Button(action: {
                viewModel.registerUser(email: email, password: password, username: username, fullname: fullname)
            }, label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(Color.purple)
                    .padding()
                    .frame(width: 360, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Capsule())
                    .background(Color.white)
                    .clipShape(Capsule())
                    .border(Color.purple)
            })
                        
            Button(action: {
                    mode.wrappedValue.dismiss()
            }, label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 15))
                        Text("Sign In")
                            .font(.system(size: 15, weight: .semibold))
                    }
                    .foregroundColor(.purple)
                    .padding(40)
            })
        }
        .padding(.horizontal)
        .foregroundColor(.white)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
