//
//  Song.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import Foundation

struct Song: Identifiable, Hashable {
    var id: String
    var name: String
    var artist: String
    var releaseDate: Date
    
    init(name: String, artist: String, releaseDate: Date) {
        self.id = UUID().uuidString
        self.name = name
        self.artist = artist 
        self.releaseDate = releaseDate
    }
    
    static func examples() -> [Song] {
        return [
            Song(name: "Fortnight", artist: "Taylor Swift", releaseDate: .distantPast),
            Song(name: "LIFETIMES", artist: "Katy Perry", releaseDate: .distantFuture),
            Song(name: "Expresso", artist: "Sabrina Carpenter", releaseDate: .now),
        ]
    }
}
