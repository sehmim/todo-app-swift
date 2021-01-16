//
//  CustomSecureField.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    let isSecure: Bool
    
    var body: some View {
        ZStack (alignment: .leading){
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                    .padding(.leading, 40)
            }
            if isSecure {
                HStack (spacing: 16) {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    SecureField("", text: $text)
                }
            } else {
                HStack (spacing: 16) {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    TextField("", text: $text)
                }
            }
        }
        .padding()
    }
}
