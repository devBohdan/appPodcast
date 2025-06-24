//
//  CustomNavigationDestination.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 20.06.2025.
//

import SwiftUI

extension View {

  func customNavigationDestination<D: Hashable, C: View> (
    for type: D.Type,
    @ViewBuilder destination: @escaping (D) -> C
  ) -> some View {

    self.navigationDestination(for: type) { value in
      CustomNavBarContainerView {
        destination(value)
      }
    }
  }
}

struct NavigationDestinationPreview: View {
  @State private var episodes = Episode.samples
  @State private var path: [Episode] = []
  let barTitle: String = "Library"

  var body: some View {
    CustomNavigationStack(path: $path) {
      ScrollView {
        LazyVStack(spacing: 30) {
          ForEach(episodes) { episode in
            CustomNavLink(value: episode) {
              EpisodeItemView(episode: episode)
            }
          }
        }
        .padding(.horizontal, 15).padding(.vertical, 30)
        .background(Color.cBG)

        .toolbar {
          ToolbarItemGroup(placement: .navigation) {
            Text(barTitle)
              .accessibilityAddTraits(.isHeader)
          }

          ToolbarItemGroup(placement: .primaryAction) {
            HStack(spacing: 2) {
              Button("add_filter") { }
              Text("|")
              Button("edit") { }
            }
          }
        }
      }
      .withGlare()

      .customNavigationDestination(for: Episode.self) { episode in
        EpisodeItemView(episode: episode)
          .toolbar {
            ToolbarItemGroup(placement: .navigation) {
              HStack {
                Button(barTitle) { path.removeLast(path.count) }
                Text("/")
                Text(episode.title)
              }
            }
            ToolbarItemGroup(placement: .primaryAction) {
              HStack(spacing: 2) {
                Button("edit") { }
                  .padding()
              }
            }
          }.navigationBarBackButtonHidden()
      }
    }
  }
}

#Preview {
  NavigationDestinationPreview()
}
