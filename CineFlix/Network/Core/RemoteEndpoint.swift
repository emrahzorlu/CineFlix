//
//  RemoteEndpoint.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

extension Remote {
  class Endpoint {
    let base: Request
    
    init(baseURL: URL, apiKey: String) {
      base = Request()
        .set(url: baseURL)
        .set(header: .authorization(apiKey))
        .set(header: .contentType(.json))
    }
  }
}
