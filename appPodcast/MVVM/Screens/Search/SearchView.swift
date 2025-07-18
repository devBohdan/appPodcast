//
//  SearchView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 26.06.2025.
//

import SwiftUI

struct Search: View {
  var body: some View {
    VStack {
      Text("Search")
      PodcastListView()
    }
    .foregroundStyle(.red)
  }
}

#Preview {
  Search()
}
