//
//  PodcastListViewModele.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 26.06.2025.
//

import Foundation

/// Search by podcast
/// https://itunes.apple.com/search?term=Design&entity=podcast&limit=12

/// Search by podcastEpisode
/// https://itunes.apple.com/search?term=Design&entity=podcastEpisode&limit=12

class PodcastListViewModele: ObservableObject {
  @Published var searchTerm: String = "Design"
  @Published var podcasts: [Podcast] = []

  func fetchPodcasts(for searchTerm: String) {

    // "https://itunes.apple.com/search?term=\(searchTerm)&entity=podcast&limit=12"
    guard let url = URL(string: "https://itunes.apple.com/search?term=Design&entity=podcast&limit=12") else {
      return
    }

    URLSession.shared.dataTask(with: url) { data, response, error in
      if let error = error {
        print("Url error: \(error)")
      } else if let data = data {
        do {
          let result = try JSONDecoder().decode(PodcastResult.self, from: data)
          self.podcasts = result.results
        } catch {
          print("Decoding error: \(error)")
        }
      }
    }.resume()
  }
}
