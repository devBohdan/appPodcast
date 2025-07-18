//
//  Library.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 24.04.2025.
//

import Foundation
import SwiftUI

struct Library: View {
  @StateObject private var viewModele = PodcastListViewModele()
  @State private var episodes = EpisodeSample.samples
  @State private var path: [EpisodeSample] = []
  let barTitle: String = "Library"

  var body: some View {
    VStack(spacing: 1) {

      CustomNavigationStack(path: $path) {

        // MARK: Episodes
        ScrollView {
          LazyVStack(spacing: 30) {
            ForEach(episodes) { episode in
              CustomNavigationLink(value: episode) {
                EpisodeItemView(episode: episode)
              }
            }
          }.padding(.horizontal, 15).padding(.vertical, 30)
        }
        .customNavigationTitle(barTitle)

        // MARK: Destination
        .customNavigationDestination(for: EpisodeSample.self) { episode in
          EpisodeItemView(episode: episode)
            .customNavigationTitle(barTitle)
            .customNavigationSubtitle(episode.title)
        }
      }
      .customSearchable(searchText: $viewModele.searchTerm)

      MiniPlayerView()
    }
  }
}

#Preview {
  Library()
}
