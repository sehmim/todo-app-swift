//
//  SwiftUIView.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""

    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        NavigationView {
        VStack {
            Image("root")
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 130)
                .padding(.bottom, 80)
            VStack (spacing: 10) {
                CustomSecureField(text: $email, placeholder: Text("Email"), imageName: "envelope", isSecure: false)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .foregroundColor(.white)


                CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock", isSecure: true)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .foregroundColor(.white)
                
                Button(action: {
//                    viewModel.login(withEmail: email, password: password)
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 0.1159182265, green: 0.6317420602, blue: 0.9511597753, alpha: 1)))
                        .padding(.vertical)
                        .frame(width: 360, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                })
                .border(Color.blue)
            }
            .padding()
            
            NavigationLink(
                destination: SignupView().navigationBarBackButtonHidden(true),
                label: {
                    HStack {
                        Text("Dont have an account?")
                            .font(.system(size: 14))
                        Text("Sign Up")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.purple)
                    .padding(40)
                })
            }
    }

}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
