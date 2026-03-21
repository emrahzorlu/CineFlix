//
//  TVShowCard.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 18.03.2026.
//

import SwiftUI

struct TVShowCard: View {
  let tvShow: TVShow
  
  var body: some View {
    VStack(alignment: .leading, spacing: 4) {
      ZStack {
        AsyncImage(url: tvShow.posterURL) { image in
          image.resizable().scaledToFill()
        } placeholder: {
          RoundedRectangle(cornerRadius: 12)
            .fill(Color.gray.opacity(0.3))
            .shimmer(cornerRadius: 12)
        }
        
        LinearGradient(
          colors: [.clear, .black.opacity(0.4)],
          startPoint: .top,
          endPoint: .bottom
        )
      }
      .frame(width: 130, height: 190)
      .clipped()
      .cornerRadius(12)
      
      VStack(alignment: .leading, spacing: 2) {
        Text("\(tvShow.name)")
          .font(.caption.bold())
          .foregroundStyle(.white)
          .lineLimit(2)
          .fixedSize(horizontal: false, vertical: true)
        
        Text(GenreMapper.tvGenre(ids: tvShow.genreIds))
          .font(.caption)
          .foregroundStyle(.gray)
      }
      .frame(width: 130, height: 44, alignment: .topLeading)
    }
    .frame(width: 130)
  }
}

#Preview {
  TVShowCard(tvShow: MockData.tvShow1)
}
