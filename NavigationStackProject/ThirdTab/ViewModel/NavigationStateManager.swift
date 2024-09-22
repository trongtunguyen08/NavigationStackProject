//
//  NavigationStateManager.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import Foundation

enum SectionIdentifier: Hashable {
    case song(Song)
    case movie(Movie)
    case book(Book)
    case settings
}
 

class NavigationStateManager: ObservableObject {
    @Published var selectionPath = [SectionIdentifier]()
    
    func popToRoot() {
        selectionPath.removeAll()
    }
    
    func goToSetting() {
        selectionPath = [.settings]
    }
}
