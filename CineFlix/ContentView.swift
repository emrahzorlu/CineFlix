//
//  ContentView.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 10.03.2026.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var movies: [Movie] = []
    @State private var errorMessage: String = ""

    private let worker = MovieWorker()

    var body: some View {
        NavigationView {
            List(movies) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                    Text(movie.releaseYear)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("CineFlix")
            .overlay {
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.red)
                }
            }
        }
        .task {
            do {
                movies = try await worker.getTrending()
            } catch {
                errorMessage = error.localizedDescription
                print("❌ Error: \(error)")
            }
        }
    }
}

#Preview {
    ContentView()
}
