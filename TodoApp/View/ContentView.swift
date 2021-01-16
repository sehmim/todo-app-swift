//
//  ContentView.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationView {
            TabView {
                NewTodos()
                .tabItem {
                    Image(systemName: "book")
                    Text("Todo List")
                }
                
                SearchTodos()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                
                DoneTodos()
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("Done")
                }
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
