//
//  MockData.swift
//  CineFlix
//
//  Created by Emrah Zorlu on 17.03.2026.
//

import Foundation

struct MockData {
  
  // MARK: - Movies
  static let movie1 = Movie(
    id: 1,
    title: "Inception",
    overview: "A thief who steals corporate secrets through the use of dream-sharing technology.",
    posterPath: "/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg",
    backdropPath: "/8ZTVqvKDQ8emSGUEMjsS4yHAwrp.jpg",
    voteAverage: 8.8,
    releaseDate: "2010-07-16",
    genreIds: [28, 878, 12]
  )
  
  static let movie2 = Movie(
    id: 2,
    title: "The Dark Knight",
    overview: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham.",
    posterPath: "/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    backdropPath: "/hqkIcbrOHL86UncnHIsHVcVmzue.jpg",
    voteAverage: 9.0,
    releaseDate: "2008-07-18",
    genreIds: [28, 80, 18]
  )
  
  static let movie3 = Movie(
    id: 3,
    title: "Interstellar",
    overview: "A team of explorers travel through a wormhole in space.",
    posterPath: "/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
    backdropPath: "/xJHokMbljvjADYdit5fK5VQsXEG.jpg",
    voteAverage: 8.7,
    releaseDate: "2014-11-07",
    genreIds: [18, 878, 12]
  )
  
  static let movie4 = Movie(
    id: 4,
    title: "Dune: Part Two",
    overview: "Paul Atreides unites with Chani and the Fremen while seeking revenge.",
    posterPath: "/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg",
    backdropPath: "/xOMo8BRK7PfcJv9JCnx7s5hj0PX.jpg",
    voteAverage: 8.5,
    releaseDate: "2024-03-01",
    genreIds: [878, 12, 18]
  )
  
  static let movie5 = Movie(
    id: 5,
    title: "Oppenheimer",
    overview: "The story of J. Robert Oppenheimer and the development of the atomic bomb.",
    posterPath: "/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
    backdropPath: "/fm6KqXpk3M2HVveHwCrBSSBaO0V.jpg",
    voteAverage: 8.3,
    releaseDate: "2023-07-21",
    genreIds: [18, 36]
  )
  
  static let movies: [Movie] = [movie1, movie2, movie3, movie4, movie5]
  
  // MARK: - TV Shows
  static let tvShow1 = TVShow(
    id: 101,
    name: "Breaking Bad",
    overview: "A high school chemistry teacher turned methamphetamine manufacturer.",
    posterPath: "/ggFHVNu6YYI5L9pCfOacjizRGt.jpg",
    backdropPath: "/tsRy63Mu5cu8etL1X7ZLyf7UP1M.jpg",
    voteAverage: 9.5,
    firstAirDate: "2008-01-20",
    genreIds: [18, 80]
  )
  
  static let tvShow2 = TVShow(
    id: 102,
    name: "Succession",
    overview: "The Roy family controls one of the biggest media conglomerates in the world.",
    posterPath: "/e2X8oZQLZMpFAGKy5sfCnkNL2l8.jpg",
    backdropPath: "/jDo2JoWmyABTaBnUVRjHRKSBuHq.jpg",
    voteAverage: 8.9,
    firstAirDate: "2018-06-03",
    genreIds: [18]
  )
  
  static let tvShow3 = TVShow(
    id: 103,
    name: "The Last of Us",
    overview: "After a global catastrophe, a hardened survivor takes charge of a 14-year-old girl.",
    posterPath: "/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg",
    backdropPath: "/uDgy6hyPd7ipXMfn1MYMTe761ws.jpg",
    voteAverage: 8.7,
    firstAirDate: "2023-01-15",
    genreIds: [18, 10765]
  )
  
  static let tvShows: [TVShow] = [tvShow1, tvShow2, tvShow3]
  
  // MARK: - Person
  static let person1 = Person(
    id: 201,
    name: "Cillian Murphy",
    profilePath: "/dm6V24NjjvjMiCtbMkc8Y2WPm2e.jpg",
    knownForDepartment: "Acting"
  )
  
  static let person2 = Person(
    id: 202,
    name: "Christopher Nolan",
    profilePath: "/xuAIuYSmsUzKlUMHaq3jBMcKiRl.jpg",
    knownForDepartment: "Directing"
  )
  
  static let persons: [Person] = [person1, person2]
}
