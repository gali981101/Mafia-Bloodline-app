//
//  MovieRatingView.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct MovieRatingView: View {
    
    var movie: Movie
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(movie.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    MovieRatingView(movie: moviesData[0])
}
