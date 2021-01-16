//
//  CustomSearchbar.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct CustomSearchbar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.leading, 1)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
        } .padding()
    }
}

struct CustomSearchbar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchbar(text: .constant("Search..."))
    }
}

