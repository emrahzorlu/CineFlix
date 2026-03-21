//
//  HomeView.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 16.03.2026.
//

import SwiftUI

struct HomeView: View {
  @StateObject private var viewModel = HomeViewModel()
  
  var body: some View {
    ZStack {
      Color.appBackground.ignoresSafeArea()
      
      ScrollView(showsIndicators: false) {
        HomeHeader()
          .padding(16)
        
        if viewModel.isLoading {
          HomeSkeletonView()
        } else {
          TrendingSection(movies: viewModel.trendingMovies)
          PopularMoviesSection(movies: viewModel.popularMovies)
          PopularTVShowSection(tvShows: viewModel.popularTVShows)
          ComingSoonSection(movies: viewModel.upcomingMovies)
        }
      }
    }
    .task {
      await viewModel.load()
    }
  }
}

#Preview {
  HomeView()
}
