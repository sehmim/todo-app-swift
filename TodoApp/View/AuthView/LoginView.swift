//
//  SwiftUIView.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct SwiftUIView: View {
    @State var username: String = ""
    @State var password: String = ""


    var body: some View {
        VStack {
            Image("root")
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 130)
                .padding(.top, 200)
                .padding(.bottom, 80)
            VStack (spacing: 10) {
                CustomSecureField(text: $username, placeholder: Text("Username"), imageName: "person")
                    .background(Color.blue)
                    .cornerRadius(15)


                CustomSecureField(text: $username, placeholder: Text("Password"), imageName: "lock")
                    .background(Color.blue)
                    .cornerRadius(15)


            }
            .padding()
            Spacer()
        }
    }

}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
