//
//  Movie.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import Foundation

struct Movie: Identifiable, Hashable {
    var id: String
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date) {
        self.id = UUID().uuidString
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static func examples() -> [Movie] {
        return [
            Movie(title: "Star Wars: Episode IV - A New Hope", releaseDate: .init(timeIntervalSince1970: 15181)),
            Movie(title: "Star Wars: Episode V - The Empire Strikes Back", releaseDate: .init(timeIntervalSince1970: 1518458800)),
            Movie(title: "Star Wars: Episode VI - Return of the Jedi", releaseDate: .init(timeIntervalSince1970: 1518717600)),
            Movie(title: "Star Wars: Episode VII - The Force Awakens", releaseDate: .init(timeIntervalSince1970: 1519076800)),
            Movie(title: "Star Wars: Episode VIII - The Last Jedi", releaseDate: .init(timeIntervalSince1970: 1519336000)),
            Movie(title: "Star Wars: Episode IX - The Rise of Skywalker", releaseDate: .init(timeIntervalSince1970: 1519595200)),
            Movie(title: "Star Wars: Episode X - The Force Unleashed", releaseDate: .init(timeIntervalSince1970: 1519854400)),
            Movie(title: "Star Wars: Episode XI - The Force Awakens: The Sequel", releaseDate: .init(timeIntervalSince1970: 1520113600)),
        ]
    }
}
