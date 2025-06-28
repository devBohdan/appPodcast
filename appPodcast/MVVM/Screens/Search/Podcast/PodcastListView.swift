//
//  PodcastListView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 26.06.2025.
//

import SwiftUI

struct PodcastListView: View {
  @StateObject private var viewModele = PodcastListViewModele()

  var body: some View {
    VStack {
      Text("PodcastListView")

      List(viewModele.podcasts) { podcast in
        Text(podcast.collectionName)
      }
      .onAppear {
        viewModele.fetchPodcasts(for: viewModele.searchTerm)
      }
    }
  }
}

#Preview {
  PodcastListView()
}
