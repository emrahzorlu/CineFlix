//
//  TVShowWorker.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol TVShowWorkerProtocol {
  func getTrending() async throws -> [TVShow]
  func getPopular(page: Int) async throws -> [TVShow]
  func getTopRated(page: Int) async throws -> [TVShow]
  func getDetail(id: Int) async throws -> TVShowDetail
  func getCredits(id: Int) async throws -> TVShowCredits
  func getSimilar(id: Int) async throws -> [TVShow]
}

struct TVShowWorker: TVShowWorkerProtocol {
  private let fetcher: TVShowFetcherProtocol
  
  init(fetcher: TVShowFetcherProtocol = TVShowFetcher()) {
    self.fetcher = fetcher
  }
  
  func getTrending() async throws -> [TVShow] {
    try await fetcher.fetchTrending()
  }
  
  func getPopular(page: Int) async throws -> [TVShow] {
    try await fetcher.fetchPopular(page: page)
  }
  
  func getTopRated(page: Int) async throws -> [TVShow] {
    try await fetcher.fetchTopRated(page: page)
  }
  
  func getDetail(id: Int) async throws -> TVShowDetail {
    try await fetcher.fetchDetail(id: id)
  }
  
  func getCredits(id: Int) async throws -> TVShowCredits {
    try await fetcher.fetchCredits(id: id)
  }
  
  func getSimilar(id: Int) async throws -> [TVShow] {
    try await fetcher.fetchSimilar(id: id)
  }
}
