//
//  PersonMethods.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct PersonMethods {
  private let request: Remote.Request
  
  init() {
    request = TMDBEndpoint.shared.request()
  }
  
  func detail(id: Int) async throws -> PersonDetail {
    try await Remote.Request(copying: request)
      .set(path: "/person/\(id)")
      .send()
  }
  
  func credits(id: Int) async throws -> PersonCredits {
    try await Remote.Request(copying: request)
      .set(path: "/person/\(id)/combined_credits")
      .send()
  }
}
