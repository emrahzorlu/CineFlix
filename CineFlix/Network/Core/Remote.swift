//
//  Remote.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

struct Remote {}

extension Remote {
  enum Error: LocalizedError {
    case invalidURL
    case nilResponse
    case invalidStatusCode(Int)
    case noContent
    case decode(Swift.Error)
    case unknown
    
    public var errorDescription: String? {
      switch self {
      case .invalidURL:
        return "The URL provided was invalid."
      case .nilResponse:
        return "No response was received from the server."
      case .invalidStatusCode(let code):
        return "Invalid status code: \(code)"
      case .noContent:
        return "No content was returned from the server."
      case .decode(let error):
        return "Failed to decode response: \(error.localizedDescription)"
      case .unknown:
        return "An unknown error occurred."
      }
    }
  }
}
