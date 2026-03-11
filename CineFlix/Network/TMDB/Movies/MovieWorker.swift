//
//  MovieWorker.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol MovieWorkerProtocol {
  func getTrending() async throws -> [Movie]
  func getPopular(page: Int) async throws -> [Movie]
  func getTopRated(page: Int) async throws -> [Movie]
  func getDetail(id: Int) async throws -> MovieDetail
  func getCredits(id: Int) async throws -> MovieCredits
  func getSimilar(id: Int) async throws -> [Movie]
}

struct MovieWorker: MovieWorkerProtocol {
  private let fetcher: MovieFetcherProtocol
  
  init(fetcher: MovieFetcherProtocol = MovieFetcher()) {
    self.fetcher = fetcher
  }
  
  func getTrending() async throws -> [Movie] {
    try await fetcher.fetchTrending()
  }
  
  func getPopular(page: Int) async throws -> [Movie] {
    try await fetcher.fetchPopular(page: page)
  }
  
  func getTopRated(page: Int) async throws -> [Movie] {
    try await fetcher.fetchTopRated(page: page)
  }
  
  func getDetail(id: Int) async throws -> MovieDetail {
    try await fetcher.fetchDetail(id: id)
  }
  
  func getCredits(id: Int) async throws -> MovieCredits {
    try await fetcher.fetchCredits(id: id)
  }
  
  func getSimilar(id: Int) async throws -> [Movie] {
    try await fetcher.fetchSimilar(id: id)
  }
  
  
}
