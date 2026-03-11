//
//  RemoteRequest.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import Foundation

extension Remote {
  final class Request {
    private(set) var session: URLSessionProtocol = URLSession.shared
    private(set) var headers: Set<HttpHeader> = []
    private(set) var url: URL?
    private(set) var method: HttpMethod = .get
    private(set) var body: Data?
    private(set) var decoder: RemoteDecoderProtocol = Decoder.Json()
    
    init() {}
    
    init(copying request: Request) {
      session = request.session
      headers = request.headers
      url = request.url
      method = request.method
      body = request.body
      decoder = request.decoder
    }
    
    @discardableResult
    func set(session: URLSessionProtocol) -> Self {
      self.session = session
      
      return self
    }
    
    @discardableResult
    func set(header: HttpHeader) -> Self {
      headers.update(with: header)
      
      return self
    }
    
    @discardableResult
    func set(url: URL?) -> Self {
      self.url = url
      
      return self
    }
    
    @discardableResult
    func set(path: String) -> Self {
      self.url = url?.appendingPathComponent(path)
      
      return self
    }
    
    @discardableResult
    func set(queryItems: [URLQueryItem]) -> Self {
      guard let url = url,
            var components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
        return self
      }
      var existing = components.queryItems ?? []
      existing.append(contentsOf: queryItems)
      components.queryItems = existing
      self.url = components.url
      
      return self
    }
    
    @discardableResult
    func set(method: HttpMethod) -> Self {
      self.method = method
      
      return self
    }
    
    @discardableResult
    func set(decoder: RemoteDecoderProtocol) -> Self {
      self.decoder = decoder
      
      return self
    }
    
    func send<T: Decodable>() async throws -> T {
      guard let url = url else {
        throw Error.invlaidURL
      }
      
      var urlRequest = URLRequest(url: url)
      urlRequest.httpMethod = method.rawValue
      urlRequest.httpBody = body
      
      for header in headers {
        let pair = header.pair()
        urlRequest.setValue(pair.value, forHTTPHeaderField: pair.key)
      }
      
#if DEBUG
      print("🌐 \(method.rawValue) \(url)")
#endif
      
      let (data, response) = try await session.data(for: urlRequest)
      
      return try decoder.decode(data: data, response: response)
    }
  }
}
