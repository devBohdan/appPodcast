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
          LazyVStack(spacing: 30) {
            ForEach(episodes) { episode in
              EpisodeItemView(episode: episode)
            }
          }.padding(.horizontal, 15)
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
