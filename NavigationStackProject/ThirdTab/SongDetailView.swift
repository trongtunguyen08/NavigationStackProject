//
//  SongDetailView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct SongDetailView: View {
    let song: Song
    @EnvironmentObject private var vm: ThirdTabViewModel
    @EnvironmentObject private var navigator: NavigationStateManager
    
    var body: some View {
        VStack {
            Text("Song Detail")
            Text(song.name)
            
            VStack {
                Text("People like also")
                ForEach(vm.songs) { song in
                    NavigationLink(value: SectionIdentifier.song(song)) {
                        Label(song.name, systemImage: "music.note")
                    }
                }
            }
            
            Button("Pop To Root") {
                navigator.popToRoot()
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    navigator.goToSetting()
                } label: {
                    Image(systemName: "gear")
                }

            }
        }
        .navigationTitle(song.name)
    }
}

#Preview {
    NavigationStack {
        SongDetailView(song: Song.examples().first!)
            .environmentObject(ThirdTabViewModel())
            .environmentObject(NavigationStateManager())
    }
}
