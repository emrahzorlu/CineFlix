//
//  PopularTVShowSection.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 18.03.2026.
//

import SwiftUI

struct PopularTVShowSection: View {
  let tvShows: [TVShow]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text("Popular TV Shows")
        .font(.system(.title, design: .default, weight: .medium))
        .foregroundStyle(.white)
      
      ScrollView(.horizontal, showsIndicators: false) {
        LazyHStack(alignment: .top, spacing: 16) {
          ForEach(tvShows) { tvShow in
            TVShowCard(tvShow: tvShow)
          }
        }
      }
    }
    .padding(.leading, 8)
  }
}

#Preview {
  PopularTVShowSection(tvShows: MockData.tvShows)
}
