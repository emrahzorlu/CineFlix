//
//  SearchWorker.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol SearchWorkerProtocol {
  func search(query: String, page: Int) async throws -> SearchResponse
}

struct SearchWorker: SearchWorkerProtocol {
  private let fetcher: SearchFetcherProtocol
  
  init(fetcher: SearchFetcherProtocol = SearchFetcher()) {
    self.fetcher = fetcher
  }
  
  func search(query: String, page: Int) async throws -> SearchResponse {
    try await fetcher.search(query: query, page: page)
  }
}
