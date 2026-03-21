//
//  MovieFetcher.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol MovieFetcherProtocol {
  func fetchTrending() async throws -> [Movie]
  func fetchPopular(page: Int) async throws -> [Movie]
  func fetchTopRated(page: Int) async throws -> [Movie]
  func fetchDetail(id: Int) async throws -> MovieDetail
  func fetchCredits(id: Int) async throws -> MovieCredits
  func fetchSimilar(id: Int) async throws -> [Movie]
  func fetchUpcoming(page: Int) async throws -> [Movie]
}

struct MovieFetcher: MovieFetcherProtocol {
  private let methods = MovieMethods()

  func fetchTrending() async throws -> [Movie] {
    try await methods.trending().results
  }
  
  func fetchPopular(page: Int = 1) async throws -> [Movie] {
    try await methods.popular(page: page).results
  }
  
  func fetchTopRated(page: Int = 1) async throws -> [Movie] {
    try await methods.topRated(page: page).results
  }
  
  func fetchDetail(id: Int) async throws -> MovieDetail {
    try await methods.detail(id: id)
  }
  
  func fetchCredits(id: Int) async throws -> MovieCredits {
    try await methods.credits(id: id)
  }
  
  func fetchSimilar(id: Int) async throws -> [Movie] {
    try await methods.similar(id: id).results
  }
  
  func fetchUpcoming(page: Int = 1) async throws -> [Movie] {
    try await methods.upcoming(page: page).results
  }
}
