//
//  MovieDetail.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

struct MovieDetail: Decodable, Identifiable {
  let id: Int
  let title: String
  let overview: String
  let posterPath: String?
  let backdropPath: String?
  let voteAverage: Double
  let releaseDate: String?
  let runtime: Int?
  let genres: [Genre]
  let status: String?
  
  var posterURL: URL? {
    guard let path = posterPath else { return nil }
    
    return URL(string: "https://image.tmdb.org/t/p/w500\(path)")
  }
  
  var backdropURL: URL? {
    guard let path = backdropPath else { return nil }
    
    return URL(string: "https://image.tmdb.org/t/p/w1280\(path)")
  }
  
  var releaseYear: String {
    guard let date = releaseDate, date.count >= 4 else { return "" }
    
    return String(date.prefix(4))
  }
  
  var ratingFormatted: String {
    String(format: "%.1f", voteAverage)
  }
  
  var runtimeFormatted: String {
    guard let runtime = runtime else { return "" }
    
    let hours = runtime / 60
    let minutes = runtime % 60
    
    return hours > 0 ? "\(hours)h \(minutes)m" : "\(minutes)m"
  }
}

struct Genre: Decodable, Identifiable {
  let id: Int
  let name: String
}
