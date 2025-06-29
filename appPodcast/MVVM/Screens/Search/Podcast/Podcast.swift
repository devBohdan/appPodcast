//
//  PodcastListViewModele.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 26.06.2025.
//

import Foundation

// Search by podcast
// https://itunes.apple.com/search?term=Design&entity=podcast&limit=12

// Search by podcastEpisode
// https://itunes.apple.com/search?term=Design&entity=podcastEpisode&limit=12

// MARK: - Welcome
struct PodcastResult: Codable {
  let resultCount: Int
  let results: [Podcast]
}

// MARK: - Result
struct Podcast: Codable, Identifiable {
  let id: Int
  let artistID: Int?
  let trackID: Int

  let artistName: String
  let collectionName: String
  let trackName: String

  let artistViewURL: String?
  let collectionViewURL: String
  let feedURL: String?
  let trackViewURL: String

  let artworkUrl30: String
  let artworkUrl60: String
  let artworkUrl100: String
  let artworkUrl600: String

  let releaseDate: String
  let trackCount: Int
//  let country: Country
  let genreIDS, genres: [String]

  enum CodingKeys: String, CodingKey {
    case id = "collectionId"
    case artistID = "artistId"
    case trackID = "trackId"

    case artistName
    case collectionName
    case trackName

    case artistViewURL = "artistViewUrl"
    case collectionViewURL = "collectionViewUrl"
    case feedURL = "feedUrl"
    case trackViewURL = "trackViewUrl"

    case artworkUrl30
    case artworkUrl60
    case artworkUrl100
    case artworkUrl600

    case releaseDate
    case trackCount
//    case country
    case genreIDS = "genreIds"
    case genres
  }
}

//  enum Country: String, Codable {
//    case usa = "USA"
//  }
