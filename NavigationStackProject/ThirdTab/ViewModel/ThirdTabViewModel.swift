//
//  ThirdTabViewModel.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import Foundation

class ThirdTabViewModel: ObservableObject {
    @Published var books: [Book] = Book.exapmles()
    @Published var songs: [Song] = Song.examples()
    @Published var movies: [Movie] = Movie.examples()
    
    init() {
    }
}
