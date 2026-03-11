//
//  TVShow.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct TVShow: Decodable, Identifiable {
  let id: Int
  let name: String
  let overview: String
  let posterPath: String?
  let backdropPath: String?
  let voteAverage: Double
  let firstAirDate: String?
  let genreIds: [Int]?
  
  var posterURL: URL? {
    guard let path = posterPath else { return nil }
    return URL(string: "https://image.tmdb.org/t/p/w500\(path)")
  }
  
  var backdropURL: URL? {
    guard let path = backdropPath else { return nil }
    return URL(string: "https://image.tmdb.org/t/p/w1280\(path)")
  }
  
  var releaseYear: String {
    guard let date = firstAirDate, date.count >= 4 else { return "" }
    return String(date.prefix(4))
  }
  
  var ratingFormatted: String {
    String(format: "%.1f", voteAverage)
  }
}

struct TVShowListResponse: Decodable {
  let page: Int
  let results: [TVShow]
  let totalPages: Int
  let totalResults: Int
}
