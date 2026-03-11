//
//  SerachMethods.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct SearchMethods {
  private let request: Remote.Request
  
  init() {
    request = TMDBEndpoint.shared.request()
  }
  
  func search(query: String, page: Int = 1) async throws -> SearchResponse {
    try await Remote.Request(copying: request)
      .set(path: "/search/multi")
      .set(queryItems: [
        URLQueryItem(name: "query", value: query),
        URLQueryItem(name: "page", value: "\(page)")
      ])
      .send()
  }
}
