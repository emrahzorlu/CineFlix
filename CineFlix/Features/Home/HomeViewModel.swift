//
//  HomeViewModel.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 11.03.2026.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
  @Published var trendingMovies: [Movie] = []
  @Published var popularMovies: [Movie] = []
  @Published var popularTVShows: [TVShow] = []
  @Published var upcomingMovies: [Movie] = []
  @Published var isLoading = false
  @Published var error: String?
  
  private let movieWorker: MovieWorkerProtocol
  private let tvShowWorker: TVShowWorkerProtocol
  
  init(movieWorker: MovieWorkerProtocol = MovieWorker(), tvShowWorker: TVShowWorkerProtocol = TVShowWorker()) {
    self.movieWorker = movieWorker
    self.tvShowWorker = tvShowWorker
  }
  
  func load() async {
    isLoading = true
    do {
      async let trending = movieWorker.getTrending()
      async let popular = movieWorker.getPopular(page: 1)
      async let tvShows = tvShowWorker.getPopular(page: 1)
      async let upcoming = movieWorker.getUpcoming(page: 1)
      
      trendingMovies = try await trending
      popularMovies = try await popular
      popularTVShows = try await tvShows
      upcomingMovies = try await upcoming
    } catch {
      self.error = error.localizedDescription
    }
    isLoading = false
  }
}
