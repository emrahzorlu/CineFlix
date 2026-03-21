//
//  MovieMethods.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

struct MovieMethods {
  private let request: Remote.Request
  
  init() {
    request = TMDBEndpoint.shared.request()
  }
  
  // MARK: Trending
  func trending() async throws -> MovieListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/trending/movie/day")
      .send()
  }
  
  // MARK: Popular
  func popular(page: Int = 1) async throws -> MovieListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/movie/popular")
      .set(queryItems: [URLQueryItem(name: "page", value: "\(page)")])
      .send()
  }
  
  // MARK: Top Rated
  func topRated(page: Int = 1) async throws -> MovieListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/movie/top_rated")
      .set(queryItems: [URLQueryItem(name: "page", value: "\(page)")])
      .send()
  }
  
  // MARK: Detail
  func detail(id: Int) async throws -> MovieDetail {
    try await Remote.Request(copying: request)
      .set(path: "/movie/\(id)")
      .send()
  }
  
  // MARK: Credits
  func credits(id: Int) async throws -> MovieCredits {
    try await Remote.Request(copying: request)
      .set(path: "/movie/\(id)/credits")
      .send()
  }
  
  // MARK: Similar
  func similar(id: Int) async throws -> MovieListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/movie/\(id)/similar")
      .send()
  }
  
  // MARK: Upcoming
  func upcoming(page: Int = 1) async throws -> MovieListResponse {
    try await Remote.Request(copying: request)
      .set(path: "/movie/upcoming")
      .set(queryItems: [URLQueryItem(name: "page", value: "\(page)")])
      .send()
  }
}
