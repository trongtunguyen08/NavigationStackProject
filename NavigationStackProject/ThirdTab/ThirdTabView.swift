//
//  ThirdTabView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct ThirdTabView: View {
    @StateObject private var thirdTabViewModel: ThirdTabViewModel = .init()
    @StateObject private var navigationStateManager: NavigationStateManager = .init()
    
    var body: some View {
        NavigationStack(path: $navigationStateManager.selectionPath) {
            List {
                songsSection
                 
                moviesSection
                
                booksSection
                
                settingsSection
            }
            .navigationTitle("Third Tab")
            .navigationDestination(for: SectionIdentifier.self) { section in
                switch section {
                case .song(let song):
                    SongDetailView(song: song)
                case .book(let book):
                    BookDetailView(book: book)
                case .movie(let movie):
                    MovieDetailView(movie: movie)
                case .settings:
                    SettingsView()
                }
            }
        }
        .environmentObject(thirdTabViewModel)
        .environmentObject(navigationStateManager)
    }
}

extension ThirdTabView {
    private var songsSection: some View {
        Section("Songs") {
            ForEach(thirdTabViewModel.songs) { song in
                NavigationLink(value: SectionIdentifier.song(song)) {
                    Text(song.name)
                }
            }
        }
    }
    
    private var moviesSection: some View {
        Section("Movies") {
            ForEach(thirdTabViewModel.movies) { movie in
                NavigationLink(value: SectionIdentifier.movie(movie)) {
                    Text(movie.title)
                }
            }
        }
    }
    
    private var booksSection: some View {
        Section("Books") {
            ForEach(thirdTabViewModel.books) { book in
                NavigationLink(value: SectionIdentifier.book(book)) {
                    Text(book.name)
                }
            }
        }
    }
    
    private var settingsSection: some View {
        Section("Settings") {
            NavigationLink(value: SectionIdentifier.settings) {
                Text("Settings")
            }
        }
    }
}

#Preview {
    ThirdTabView()
}
