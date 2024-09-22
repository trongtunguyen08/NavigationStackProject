//
//  FirstTabView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct FirstTabView: View {
    @State private var showSettings: Bool = false
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path ) {
            List {
                NavigationLink("Show AAA", value: "AAA")
                
                NavigationLink("Show BBB", value: "BBB")
                
                NavigationLink("Go to number", value: 1)
                
                Button("Show Favourites") {
                    path.append("GGG")
                }
                
                Button("Settings") {
                    self.showSettings.toggle()
                }
                
                Section("Old") {
                    NavigationLink("Old link destination") {
                        VStack {
                            Text("Old link destination")
                            NavigationLink("Go to number 2", value: 2)
                        }
                    }
                }
                
            }
            .navigationDestination(for: String.self) { value in
                FirstTabDetailView(text: value, path: $path)
            }
            .navigationDestination(for: Int.self) { value in
                Text("Destination: \(value)")
            }
            .navigationDestination(isPresented: $showSettings, destination: {
                Text("Settings")
            })
            .navigationTitle("Root View")
        }
    }
}

#Preview {
    FirstTabView()
}
