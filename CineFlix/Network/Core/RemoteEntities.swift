//
//  RemoteEntities.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

extension Remote {
  enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
  }
  
  enum ContentType: String {
    case json       = "application/json"
    case urlEncoded = "application/x-www-form-urlencoded"
  }
  
  enum HttpHeader {
    case contentType(ContentType)
    case authorization(String)
    case accept(String)
    case custom(key: String, value: String)
    
    func pair() -> (key: String, value: String) {
      switch self {
      case .contentType(let type):
        return (key: "Content-Type", value: type.rawValue)
      case .authorization(let token):
        return (key: "Authorization", value: "Bearer \(token)")
      case .accept(let value):
        return (key: "Accept", value: value)
      case .custom(let key, let value):
        return (key: key, value: value)
      }
    }
  }
}

extension Remote.HttpHeader: Hashable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(pair().key)
  }
  
  static func == (lhs: Remote.HttpHeader, rhs: Remote.HttpHeader) -> Bool {
    lhs.pair().key == rhs.pair().key
  }
}
