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

  let wrapperType: WrapperType
  let kind: Kind
  let artistID: Int?
//  let collectionID
  let trackID: Int
  let artistName, collectionName, trackName, collectionCensoredName: String
  let trackCensoredName: String
  let artistViewURL: String?
  let collectionViewURL: String
  let feedURL: String
  let trackViewURL: String
  let artworkUrl30, artworkUrl60, artworkUrl100: String
  let collectionPrice, trackPrice, collectionHDPrice: Int
  let releaseDate: String
  let collectionExplicitness: CollectionExplicitness
  let trackExplicitness: TrackExplicitness
  let trackCount, trackTimeMillis: Int
  let country: Country
  let currency: Currency
  let primaryGenreName: String
  let contentAdvisoryRating: ContentAdvisoryRating
  let artworkUrl600: String
  let genreIDS, genres: [String]

  enum CodingKeys: String, CodingKey {
    case wrapperType, kind
    case artistID = "artistId"
    case id = "collectionId"
    case trackID = "trackId"
    case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
    case artistViewURL = "artistViewUrl"
    case collectionViewURL = "collectionViewUrl"
    case feedURL = "feedUrl"
    case trackViewURL = "trackViewUrl"
    case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice
    case collectionHDPrice = "collectionHdPrice"
    case releaseDate, collectionExplicitness, trackExplicitness, trackCount, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, artworkUrl600
    case genreIDS = "genreIds"
    case genres
  }
}

enum CollectionExplicitness: String, Codable {
  case notExplicit = "notExplicit"
}

enum ContentAdvisoryRating: String, Codable {
  case clean = "Clean"
  case explicit = "Explicit"
}

enum Country: String, Codable {
  case usa = "USA"
}

enum Currency: String, Codable {
  case usd = "USD"
}

enum Kind: String, Codable {
  case podcast = "podcast"
}

enum TrackExplicitness: String, Codable {
  case cleaned = "cleaned"
  case explicit = "explicit"
}

enum WrapperType: String, Codable {
  case track = "track"
}
