//
//  PersonCredits.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct PersonCredits: Decodable {
  let id: Int
  let cast: [PersonCastCredit]
  let crew: [PersonCrewCredit]
}

struct PersonCastCredit: Decodable, Identifiable {
  let id: Int
  let title: String?
  let name: String?
  let character: String?
  let posterPath: String?
  let mediaType: String?
  
  var displayTitle: String {
    title ?? name ?? ""
  }
  
  var posterURL: URL? {
    guard let path = posterPath else { return nil }
    return URL(string: "https://image.tmdb.org/t/p/w500\(path)")
  }
}

struct PersonCrewCredit: Decodable, Identifiable {
  let id: Int
  let title: String?
  let name: String?
  let job: String?
  let posterPath: String?
  let mediaType: String?
  
  var displayTitle: String {
    title ?? name ?? ""
  }
  
  var posterURL: URL? {
    guard let path = posterPath else { return nil }
    
    return URL(string: "https://image.tmdb.org/t/p/w500\(path)")
  }
}
