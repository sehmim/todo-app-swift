//
//  NewTodo.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct NewTodo: View {
    @Binding var show: Bool
    @State var inputTodoTitle: String
    @State var inputDesc: String

    @ObservedObject var viewModel = TodosViewModel()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Todo Title...", text: $inputTodoTitle)
                .font(Font.system(size: 35))
            TextField("Details", text: $inputDesc)
                .frame(width: .infinity, height: 400)
            
            Button(action: {
                viewModel.addTodo(title: inputTodoTitle, desc: inputDesc)
                show.toggle()
            }, label: {
                Text("Add Todo")
            })
            
        }.padding()
    }
}

struct NewTodo_Previews: PreviewProvider {
    static var previews: some View {
        NewTodo(show: .constant(false), inputTodoTitle: "", inputDesc: "")
    }
}
