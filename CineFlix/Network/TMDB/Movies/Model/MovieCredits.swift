//
//  MovieCredits.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

struct MovieCredits: Decodable {
  let id: Int
  let cast: [CastMember]
  let crew: [CrewMember]
}
