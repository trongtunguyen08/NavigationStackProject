//
//  MovieDetailView.swift
//  NavigationStackProject
//
//  Created by Tu Nguyen on 22/09/2024.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Text("Movie Detail")
            Text(movie.title)
        }
    }
}

#Preview {
    MovieDetailView(movie: Movie.examples().first!)
        .environmentObject(ThirdTabViewModel())
        .environmentObject(NavigationStateManager())
}
