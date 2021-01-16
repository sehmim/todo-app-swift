//
//  NewTodo.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct NewTodo: View {
    @Binding var show: Bool
    @Binding var inputTodoTitle: String
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Todo Title...", text: $inputTodoTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(Font.system(size: 35))
            TextField("Details", text: $inputTodoTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.body)
                .frame(width: .infinity, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }.padding()
    }
}

struct NewTodo_Previews: PreviewProvider {
    static var previews: some View {
        NewTodo(show: .constant(false), inputTodoTitle: .constant(""))
    }
}
