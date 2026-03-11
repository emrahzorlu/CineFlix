//
//  TVShowFetcher.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol TVShowFetcherProtocol {
  func fetchTrending() async throws -> [TVShow]
  func fetchPopular(page: Int) async throws -> [TVShow]
  func fetchTopRated(page: Int) async throws -> [TVShow]
  func fetchDetail(id: Int) async throws -> TVShowDetail
  func fetchCredits(id: Int) async throws -> TVShowCredits
  func fetchSimilar(id: Int) async throws -> [TVShow]
}

struct TVShowFetcher: TVShowFetcherProtocol {
  private let methods = TVShowMethods()

  func fetchTrending() async throws -> [TVShow] {
    try await methods.trending().results
  }
  
  func fetchPopular(page: Int = 1) async throws -> [TVShow] {
    try await methods.popular(page: page).results
  }
  
  func fetchTopRated(page: Int = 1) async throws -> [TVShow] {
    try await methods.topRated(page: page).results
  }
  
  func fetchDetail(id: Int) async throws -> TVShowDetail {
    try await methods.detail(id: id)
  }
  
  func fetchCredits(id: Int) async throws -> TVShowCredits {
    try await methods.credits(id: id)
  }
  
  func fetchSimilar(id: Int) async throws -> [TVShow] {
    try await methods.similar(id: id).results
  }
  
}

