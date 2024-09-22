//
//  BookDetailView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book Detail")
            Text(book.name)
        }
    }
}

#Preview {
    BookDetailView(book: Book.exapmles().first!)
        .environmentObject(ThirdTabViewModel())
        .environmentObject(NavigationStateManager())
}
