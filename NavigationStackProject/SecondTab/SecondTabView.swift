//
//  SecondTabView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI
 
struct SecondTabView: View {
    let books: [Book] = Book.exapmles()
    @State private var selectedBookPath = [Book]()
    
    var body: some View {
        VStack {
            NavigationStack(path: $selectedBookPath) {
                List {
                    ForEach(books) { book in
                        NavigationLink(value: book) {
                            Text(book.name)
                        }
                    }
                }
                .navigationDestination(for: Book.self) { bookValue in
                    BookDestinationView(book: bookValue)
                }
            }
            
            VStack {
                ForEach(selectedBookPath) { book in
                    Text(book.name)
                }
                
                Button("Show my Favorite Book") {
                    guard let favoriteBook = books.first else { return }
                    selectedBookPath = [favoriteBook]
                }
            }
        }
    }
}
 
#Preview {
    SecondTabView()
}
