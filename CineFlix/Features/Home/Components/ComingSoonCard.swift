import SwiftUI

struct ComingSoonCard: View {
  let movie: Movie
  
  var body: some View {
    HStack(alignment: .top, spacing: 12) {
      ZStack {
        AsyncImage(url: movie.posterURL) { image in
          image.resizable().scaledToFill()
        } placeholder: {
          RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.3))
            .shimmer(cornerRadius: 10)
        }
        LinearGradient(
          colors: [.clear, .black.opacity(0.4)],
          startPoint: .top,
          endPoint: .bottom
        )
      }
      .frame(width: 90, height: 130)
      .clipped()
      .cornerRadius(10)
      
      VStack(alignment: .leading, spacing: 6) {
        Text(movie.releaseDate ?? "")
          .font(.caption.bold())
          .foregroundStyle(.white)
          .padding(.horizontal, 10)
          .padding(.vertical, 4)
          .background(Color.appRed)
          .cornerRadius(6)
        
        Text(movie.title)
          .font(.headline.bold())
          .foregroundStyle(.white)
          .lineLimit(2)
        
        Text(movie.overview)
          .font(.caption)
          .foregroundStyle(.gray)
          .lineLimit(2)
          .fixedSize(horizontal: false, vertical: true)
        
        HStack(spacing: 4) {
          Image(systemName: "bell.fill")
            .foregroundStyle(Color.appRed)
            .font(.caption)
          Text("REMIND ME")
            .font(.caption.bold())
            .foregroundStyle(Color.appRed)
        }
      }
    }
    .padding(12)
    .background(Color.appRed.opacity(0.12))
    .overlay(
      RoundedRectangle(cornerRadius: 12)
        .stroke(Color.appRed.opacity(0.3), lineWidth: 1)
    )
    .cornerRadius(12)
    .padding(.horizontal, 8)
  }
}

#Preview {
  ComingSoonCard(movie: MockData.movie3)
    .background(Color.black)
}
