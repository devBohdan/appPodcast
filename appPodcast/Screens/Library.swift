//
//  Library.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 24.04.2025.
//

import Foundation
import SwiftUI


struct Library: View {
  @State var episodes = Episode.samples
  
  var body: some View {
    VStack {
      Spacer()
      VStack(spacing: 1) {
        // MARK: Episodes
        ScrollView {
          LazyVStack {
            ForEach(episodes) { episode in
              EpisodeView(episode: episode)
            }
          }
        }.withGlare()
        
        MiniPlayerView()
      }
    }
    .background(Color.black)
  }
}

#Preview {
  Library()
}
