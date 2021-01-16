//
//  CustomTextField.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-16.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeholder: Text
    let imageName: String

    var body: some View {
        ZStack (alignment: .leading){
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                    .padding(.leading, 40)
            }
            
            HStack (spacing: 16) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)

                TextField("", text: $text)
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.purple)
            
        }
        .cornerRadius(50)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), placeholder: Text("HI"), imageName: ("lock"))
    }
}
