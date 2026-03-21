//
//  ComingSoonSection.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 18.03.2026.
//

import SwiftUI

struct ComingSoonSection: View {
  let movies: [Movie]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      HStack {
        Text("Coming Soon")
          .font(.system(.title, design: .default, weight: .medium))
          .foregroundStyle(.white)
        
        Spacer()
        
        Text("See All")
          .font(.subheadline.bold())
          .foregroundStyle(Color.appRed)
      }
      .padding(.horizontal, 16)
      
      VStack(spacing: 12) {
        ForEach(movies.prefix(5)) { movie in
          ComingSoonCard(movie: movie)
        }
      }
    }
  }
}

#Preview {
  ComingSoonSection(movies: MockData.movies)
    .background(Color.black)
}
