//
//  ShimmerModifier.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 16.03.2026.
//

import Foundation

struct GenreMapper {
  
  static let movies: [Int: String] = [
    28: "Action",
    12: "Adventure",
    16: "Animation",
    35: "Comedy",
    80: "Crime",
    99: "Documentary",
    18: "Drama",
    10751: "Family",
    14: "Fantasy",
    36: "History",
    27: "Horror",
    10402: "Music",
    9648: "Mystery",
    10749: "Romance",
    878: "Sci-Fi",
    10770: "TV Movie",
    53: "Thriller",
    10752: "War",
    37: "Western"
  ]
  
  static let tvShows: [Int: String] = [
    10759: "Action",
    16: "Animation",
    35: "Comedy",
    80: "Crime",
    99: "Documentary",
    18: "Drama",
    10751: "Family",
    10762: "Kids",
    9648: "Mystery",
    10763: "News",
    10764: "Reality",
    10765: "Sci-Fi",
    10766: "Soap",
    10767: "Talk",
    10768: "War",
    37: "Western"
  ]
  
  static func movieGenre(ids: [Int]?) -> String {
    guard let id = ids?.first else { return "Movie" }
    return movies[id] ?? "Movie"
  }
  
  static func tvGenre(ids: [Int]?) -> String {
    guard let id = ids?.first else { return "TV Show" }
    return tvShows[id] ?? "TV Show"
  }
}
