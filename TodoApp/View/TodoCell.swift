//
//  TodoCell.swift
//  TodoApp
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI

struct TodoCell: View {
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text("Do dishes")
                        .bold()
                        .padding(.vertical, 5)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Date")
                        .padding(.vertical, 5)
                        .font(.subheadline)
                }
                .padding(.horizontal)

                
                Text("Details about this to do features go here. The Detail can be really large but it should wrap around the cell")
                Divider()
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
        }
    }
}

struct TodoCell_Previews: PreviewProvider {
    static var previews: some View {
        TodoCell()
    }
}
