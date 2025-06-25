//
//  CustomNavigationLink.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 20.06.2025.
//

import SwiftUI

struct CustomNavigationLink<Label: View, Value: Hashable>: View {
  var value: Value
  var label: Label

  init(value: Value, @ViewBuilder label: @escaping () -> Label) {
    self.value = value
    self.label = label()
  }

  var body: some View {
    NavigationLink(value: value) {
      label
    }
  }
}

#Preview {
  CustomNavLinkPreviewWrapper()
}

struct CustomNavLinkPreviewWrapper: View {
  @State private var episodes = Episode.samples

  var body: some View {
    ForEach(episodes) { episode in
      CustomNavigationLink(value: episode) {
        EpisodeItemView(episode: episode)
      }
    }
  }
}
