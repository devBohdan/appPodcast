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
    VStack(spacing: 1) {
      
      // MARK: Episodes
      CustomNavView {
        ScrollView {
          LazyVStack(spacing: 30) {
            ForEach(episodes) { episode in
              CustomNavigationLink(
                destination: Text("test"),
                label: { EpisodeItemView(episode: episode) })
            }
          }.padding(.horizontal, 15).padding(.top, 30)
        }
        .customNavigationTitle("Library")
        .customNavBarBackBtnHidden(true)
        .withGlare()
      }
      
      MiniPlayerView()
    }
    .background(Color.black)
  }
}

#Preview {
  Library()
}
