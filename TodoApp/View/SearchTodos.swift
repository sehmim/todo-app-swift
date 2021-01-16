//
//  SearchTodos.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct SearchTodos: View {
    @State var searchText = ""
    
    // Button
    @State var isShwoingNewTodo = false
    @State var inputTodoTitle: String = ""
//    @ObservedObject var viewModel = SearchViewModel()

    var body: some View {
        ZStack ( alignment: .bottomTrailing ){
            ScrollView {
                CustomSearchbar(text: $searchText)
                VStack (alignment: .leading) {
                    ForEach (0..<10) { _ in
                        HStack { Spacer() }
                        
                        NavigationLink(
                            destination: TodoView(),
                            label: {
                                TodoCell()
                            })
                            .foregroundColor(.black)
                    }
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
                NewTodo(show: $isShwoingNewTodo, inputTodoTitle: $inputTodoTitle)
            })
        }
    }
}

struct SearchTodos_Previews: PreviewProvider {
    static var previews: some View {
        SearchTodos()
    }
}

