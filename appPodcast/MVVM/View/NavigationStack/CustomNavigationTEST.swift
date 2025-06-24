//
//  CustomNavigationTEST.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 16.06.2025.
//

import SwiftUI

struct CustomNavigationTEST: View {
  @State private var episodes = Episode.samples
  @State private var path: [Episode] = []
  let barTitle: String = "Library"

  var body: some View {
    CustomNavigationStack(path: $path) {

// MARK: Content Episodes
      ScrollView {
        LazyVStack(spacing: 30) {
          ForEach(episodes) { episode in
            CustomNavLink(value: episode) {
              EpisodeItemView(episode: episode)
            }
          }
        }
        .padding(.horizontal, 15).padding(.vertical, 30)
        /*.background(Color.cBG)*/ // TODO: [UI] found a second color
      }
      .navigationTitle(barTitle)
      .withGlare()

// MARK: Content ToolBar
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

// MARK: Destination
      .customNavigationDestination(for: Episode.self) { episode in
        EpisodeItemView(episode: episode)

// MARK: Destination ToolBar
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
          } .navigationBarBackButtonHidden()
      }
    }
  }
}

#Preview("Custom Navigation") {
  CustomNavigationTEST()
}
