//
//  MovieInfoView.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct MovieInfoView: View {
    
    var movie: Movie
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Members: \(movie.Members)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Training: \(movie.Training)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Operations: \(movie.Operations)")
            }
        }
        .font(.footnote)
        .foregroundColor(Color(uiColor: .label))
    }
    
}

#Preview {
    MovieInfoView(movie: moviesData[0])
}
