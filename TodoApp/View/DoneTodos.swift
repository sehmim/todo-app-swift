//
//  DoneTodos.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct DoneTodos: View {
    // Button
    @State var isShwoingNewTodo = false
        
    var body: some View {
        ZStack ( alignment: .bottomTrailing ){
            ScrollView {
                ForEach (0..<10) { _ in
                    NavigationLink(
                        destination: TodoView(),
                        label: {
                            TodoCell()
                        })
                        .foregroundColor(.black)
                }
            }
            Button(action: { self.isShwoingNewTodo.toggle() }, label: {
                Image(systemName: "plus.circle")
                    .font(Font.system(size: 50))
            })
            .padding()
            .background(Color.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .sheet( isPresented: $isShwoingNewTodo, content: {
                NewTodo(show: $isShwoingNewTodo, inputTodoTitle: "", inputDesc: "")
            })
        }
    }
}

struct DoneTodos_Previews: PreviewProvider {
    static var previews: some View {
        DoneTodos()
    }
}
