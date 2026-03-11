//
//  TVShowCredits.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct TVShowCredits: Decodable {
  let id: Int
  let cast: [CastMember]
  let crew: [CrewMember]
}
