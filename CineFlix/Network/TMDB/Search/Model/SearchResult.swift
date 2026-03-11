//
//  SearchResult.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

enum SearchResult: Decodable, Identifiable {
  case movie(Movie)
  case tvShow(TVShow)
  case person(Person)
  case unknown
  
  var id: Int {
    switch self {
    case .movie(let movie):
      return movie.id
    case .tvShow(let show):
      return show.id
    case .person(let person):
      return person.id
    case .unknown:
      return -1
    }
  }
  
  private enum CodingKeys: String, CodingKey {
    case mediaType
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let mediaType = try container.decode(String.self, forKey: .mediaType)
    
    switch mediaType {
    case "movie":
      let movie = try Movie(from: decoder)
      self = .movie(movie)
    case "tv":
      let show = try TVShow(from: decoder)
      self = .tvShow(show)
    case "person":
      let person = try Person(from: decoder)
      self = .person(person)
    default:
      self = .unknown
    }
  }
}

struct SearchResponse: Decodable {
  let page: Int
  let results: [SearchResult]
  let totalPages: Int
  let totalResults: Int
}
