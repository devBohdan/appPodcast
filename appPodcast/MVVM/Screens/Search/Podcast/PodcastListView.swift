//
//  PodcastListView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 26.06.2025.
//

import SwiftUI

struct PodcastListView: View {
  @StateObject private var viewModele = PodcastListViewModele()
  @State private var episodes = EpisodeSample.samples
  @State private var path: [EpisodeSample] = []
  let barTitle: String = "Library"

  var body: some View {
    VStack {
      Text("PodcastListView")

      NavigationStack(path: $path) {
        List(viewModele.podcasts) { podcast in
          Text(podcast.collectionName)
        }
      }
      .searchable(text: $viewModele.searchTerm)
    }
  }
}

#Preview {
  PodcastListView()
}
