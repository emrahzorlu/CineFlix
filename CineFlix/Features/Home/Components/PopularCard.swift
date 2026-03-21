//
//  PopularCard.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 18.03.2026.
//

import SwiftUI

struct PopularCard: View {
  let movie: Movie
  
  var body: some View {
    VStack(alignment: .leading, spacing: 4) {
      ZStack(alignment: .topTrailing) {
        AsyncImage(url: movie.posterURL) { image in
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
        Text("\(movie.title)")
          .font(.caption.bold())
          .foregroundStyle(.white)
          .lineLimit(2)
          .fixedSize(horizontal: false, vertical: true)
          .frame(width: 130, alignment: .leading)
        
        HStack(spacing: 4) {
          Text(GenreMapper.movieGenre(ids: movie.genreIds))
            .font(.caption)
            .foregroundStyle(.white)
          
          Text("•")
            .font(.caption)
            .foregroundStyle(.gray)
          
          Text(movie.releaseYear)
            .font(.caption2)
            .foregroundStyle(.gray)
        }
      }
      .frame(width: 130, height: 44, alignment: .topLeading)
    }
  }
}

#Preview {
  PopularCard(movie: MockData.movie5)
}
