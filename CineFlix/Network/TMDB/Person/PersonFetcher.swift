//
//  PersonFetcher.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation

protocol PersonFetcherProtocol {
  func fetchDetails(id: Int) async throws -> PersonDetail
  func fetchCredits(id: Int) async throws -> PersonCredits
}

struct PersonFetcher: PersonFetcherProtocol {
  private let methods = PersonMethods()
  
  func fetchDetails(id: Int) async throws -> PersonDetail {
    try await methods.detail(id: id)
  }
  
  func fetchCredits(id: Int) async throws -> PersonCredits {
    try await methods.credits(id: id)
  }
}
