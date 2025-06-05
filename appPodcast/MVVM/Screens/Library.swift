//
//  Library.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 24.04.2025.
//

import Foundation
import SwiftUI

struct Library: View {
  @State private var episodes = Episode.samples

  var body: some View {

  let barTitle: String = "Library"

    VStack(spacing: 1) {

      // MARK: Episodes
      CustomNavView {
        ScrollView {
          LazyVStack(spacing: 30) {
            ForEach(episodes) { episode in
              CustomNavigationLink(
                destination: Text("test")
                  .customNavigationTitle(barTitle)
                  .customNavigationSubTitle(episode.title),
                label: { EpisodeItemView(episode: episode) })
            }
          }
          .padding(.horizontal, 15).padding(.top, 30)
          .background(Color.cBG)
        }
        .customNavigationTitle(barTitle)
        .customNavBarBackBtnHidden(true)
        .withGlare()
      }
      MiniPlayerView()
    }
  }
}

#Preview {
  Library()
}
