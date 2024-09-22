//
//  ContentView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Label("First", systemImage: "plus")
                }
            
            SecondTabView()
                .tabItem {
                    Label("Second", systemImage: "face.smiling")
                }
            
            ThirdTabView()
                .tabItem {
                    Label("Third", systemImage: "music.note")
                }
        }
    }
}

#Preview {
    ContentView()
}
