//
//  BookDestinationView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct BookDestinationView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book detail view")
            
            Divider()
            
            NavigationLink("Suggested books", value: Book(name: "Suggested books"))
            
            NavigationLink("Other books", value: Book(name: "Other books"))
        }
        .navigationTitle(book.name)
    }
}

#Preview {
    BookDestinationView(book: Book.exapmles().first!)
}
