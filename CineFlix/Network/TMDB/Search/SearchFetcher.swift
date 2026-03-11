//
//  SearchFetcher.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol SearchFetcherProtocol {
  func search(query: String, page: Int) async throws -> SearchResponse
}

struct SearchFetcher: SearchFetcherProtocol {
  private let methods = SearchMethods()
  
  func search(query: String, page: Int) async throws -> SearchResponse {
    try await methods.search(query: query, page: page)
  }
}
