//
//  Credits.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct CastMember: Decodable, Identifiable {
  let id: Int
  let name: String
  let character: String
  let profilePath: String?
  let order: Int
  
  var profileURL: URL? {
    guard let path = profilePath else { return nil }
    return URL(string: "https://image.tmdb.org/t/p/w185\(path)")
  }
}

struct CrewMember: Decodable, Identifiable {
  let id: Int
  let name: String
  let job: String
  let department: String
  let profilePath: String?
  
  var profileURL: URL? {
    guard let path = profilePath else { return nil }
    return URL(string: "https://image.tmdb.org/t/p/w185\(path)")
  }
}
