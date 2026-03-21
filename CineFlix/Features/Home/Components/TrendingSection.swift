//
//  TrendingSection.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 16.03.2026.
//

import SwiftUI

struct TrendingSection: View {
  let movies: [Movie]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text("Trending Today")
        .font(.system(.title, design: .default, weight: .medium))
        .foregroundStyle(.white)
      
      ScrollView(.horizontal, showsIndicators: false) {
        LazyHStack(spacing: 16) {
          ForEach(movies) { movie in
            TrendingCard(movie: movie)
          }
        }
      }
    }
    .padding(.leading, 8)
  }
}

#Preview {
  TrendingSection(movies: [MockData.movie1,
                           MockData.movie5,
                           MockData.movie3,
                           MockData.movie4])
  .background(Color.black)
}
