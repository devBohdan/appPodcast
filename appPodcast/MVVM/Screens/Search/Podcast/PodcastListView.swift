//
//  PodcastListView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 26.06.2025.
//

import SwiftUI

struct PodcastListView: View {
  @StateObject private var viewModele = PodcastListViewModele()
  let barTitle: String = "Search View"

  var body: some View {
    VStack {
      Text(barTitle)
      NavigationStack {
        ScrollView {
          LazyVStack(alignment: .leading, spacing: 30) {
            ForEach(viewModele.podcasts) { podcast in
              PodcastItemView(podcast: podcast)
            }
          }.padding(.horizontal, 15).padding(.vertical, 30)
        }
      }
      .customSearchable(searchText: $viewModele.searchTerm)
    }
  }
}

#Preview {
  PodcastListView()
}
