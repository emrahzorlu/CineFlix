//
//  TVShowMethods.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct TVShowMethods {
  private let request: Remote.Request
  
  init() {
    request = TMDBEndpoint.shared.request()
  }
  
  // MARK: Trending
  func trending() async throws -> TVShowListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/trending/tv/day")
      .send()
  }
  
  // MARK: Popular
  func popular(page: Int = 1) async throws -> TVShowListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/tv/popular")
      .set(queryItems: [URLQueryItem(name: "page", value: "\(page)")])
      .send()
  }
  
  // MARK: Top Rated
  func topRated(page: Int = 1) async throws -> TVShowListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/tv/top_rated")
      .set(queryItems: [URLQueryItem(name: "page", value: "\(page)")])
      .send()
  }
  
  // MARK: Detail
  func detail(id: Int) async throws -> TVShowDetail {
    try await Remote.Request(copying: request)
      .set(path: "/tv/\(id)")
      .send()
  }
  
  // MARK: Credits
  func credits(id: Int) async throws -> TVShowCredits {
    try await Remote.Request(copying: request)
      .set(path: "/tv/\(id)/credits")
      .send()
  }
  
  // MARK: Similar
  func similar(id: Int) async throws -> TVShowListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/tv/\(id)/similar")
      .send()
  }
}
