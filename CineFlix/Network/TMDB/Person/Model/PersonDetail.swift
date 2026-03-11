//
//  PersonDetail.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct PersonDetail: Decodable, Identifiable {
  let id: Int
  let name: String
  let biography: String?
  let birthday: String?
  let placeOfBirth: String?
  let profilePath: String?
  let knownForDepartment: String?
  
  var profileURL: URL? {
    guard let path = profilePath else { return nil }
    
    return URL(string: "https://image.tmdb.org/t/p/w185\(path)")
  }
}
