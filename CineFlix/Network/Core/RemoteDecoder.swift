//
//  RemoteDecoder.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

protocol RemoteDecoderProtocol {
  func decode<T: Decodable>(data: Data, response: URLResponse) throws -> T
}

extension Remote {
  struct Decoder {
    struct Json: RemoteDecoderProtocol {
      func decode<T: Decodable>(data: Data, response: URLResponse) throws -> T {
        guard let httpResponse = response as? HTTPURLResponse else {
          throw Remote.Error.nilResponse
        }
        
        guard (200...299).contains(httpResponse.statusCode) else {
          throw Remote.Error.invalidStatusCode(httpResponse.statusCode)
        }
        
        let decoder = JSONDecoder()
        
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
          return try decoder.decode(T.self, from: data)
        } catch {
          throw Remote.Error.decode(error)
        }
      }
    }
  }
}
