//
//  Book.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import Foundation

struct Book: Identifiable, Hashable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
    
    static func exapmles() -> [Book] {
        return [
            Book(name: "SwiftUI"),
            Book(name: "Combine"),
            Book(name: "SwiftUI for iOS"),
        ]
    }
}
