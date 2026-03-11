//
//  Person.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct Person: Decodable, Identifiable {
  let id: Int
  let name: String
  let profilePath: String?
  let knownForDepartment: String?
  
  var profileURL: URL? {
    guard let path = profilePath else { return nil }
    
    return URL(string: "https://image.tmdb.org/t/p/w185\(path)")
  }
}

struct PersonListResponse: Decodable {
  let page: Int
  let results: [Person]
  let totalPages: Int
  let totalResults: Int
}
