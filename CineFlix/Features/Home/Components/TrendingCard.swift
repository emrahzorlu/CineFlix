//
//  TrendingCard.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 16.03.2026.
//

import SwiftUI

struct TrendingCard: View {
  let movie: Movie
  
  var body: some View {
    VStack(alignment: .leading, spacing: 4) {
      ZStack(alignment: .topTrailing) {
        AsyncImage(url: movie.backdropURL) { image in
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
        
        HStack(spacing: 4) {
          Image(systemName: "star.fill")
            .foregroundStyle(.yellow)
            .font(.caption)
          Text(movie.ratingFormatted)
            .foregroundStyle(.white)
            .font(.caption)
            .bold()
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(.black.opacity(0.7))
        .cornerRadius(8)
        .padding(8)
      }
      .frame(width: 280, height: 160)
      .clipped()
      .cornerRadius(12)
      
      
      Text(movie.title)
        .foregroundStyle(.white)
        .font(.headline)
        .frame(width: 280, alignment: .leading)
    }
    .frame(width: 280)
  }
}

#Preview {
  TrendingCard(movie: MockData.movie1)
    .background(Color.black)
}

