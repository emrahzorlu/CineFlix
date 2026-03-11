//
//  TMDBEndpoint.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

final class TMDBEndpoint: Remote.Endpoint {
  
  private enum Constants {
    static let baseURL = URL(string: "https://api.themoviedb.org/3")!
    static let language = "en-US"
    static let apiKey: String = {
      guard let key = Bundle.main.object(
        forInfoDictionaryKey: "TMDBAPIKey"
      ) as? String, !key.isEmpty else {
        fatalError("API key not found")
      }
      return key
    }()
  }
  
  static let shared = TMDBEndpoint()
  
  private init() {
    super.init(baseURL: Constants.baseURL,
               apiKey: Constants.apiKey)
  }
  
  func request() -> Remote.Request {
    Remote.Request(copying: base)
      .set(queryItems: [URLQueryItem(name: "language", value: Constants.language)])
  }
}
