//
//  PersonWorker.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol PersonWorkerProtocol {
  func getDetails(id: Int) async throws -> PersonDetail
  
  func getCredits(id: Int) async throws -> PersonCredits
}

struct PersonWorker: PersonWorkerProtocol {
  private let fetcher: PersonFetcherProtocol
  
  init(fetcher: PersonFetcherProtocol = PersonFetcher()) {
    self.fetcher = fetcher
  }
  
  func getDetails(id: Int) async throws -> PersonDetail {
    try await fetcher.fetchDetails(id: id)
  }
  
  func getCredits(id: Int) async throws -> PersonCredits {
    try await fetcher.fetchCredits(id: id)
  }
}
