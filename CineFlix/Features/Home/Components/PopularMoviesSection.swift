//
//  PopularMoviesSection.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 18.03.2026.
//

import SwiftUI

struct PopularMoviesSection: View {
  let movies: [Movie]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text("Popular Movies")
        .font(.system(.title, design: .default, weight: .medium))
        .foregroundStyle(.white)
      
      ScrollView(.horizontal, showsIndicators: false) {
        LazyHStack(spacing: 16) {
          ForEach(movies) { movie in
            PopularCard(movie: movie)
          }
        }
      }
    }
    .padding(.leading, 8)
  }
}

#Preview {
  PopularMoviesSection(movies: MockData.movies)
}
