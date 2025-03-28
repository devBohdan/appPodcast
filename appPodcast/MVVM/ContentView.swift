//
//  ContentView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.02.2025.
//

import SwiftUI

struct ContentView: View {
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

        VStack(spacing: 3) {
          // MARK: Mini Player
          VStack(spacing: 1) {
            PlayerProgressBar()
            HStack(alignment: .bottom, spacing: 3) {
              PlayerDisplayView()
              PlayerButtonView()
              PlayerButtonView()
              PlayerButtonView()
                .padding(.trailing, 2)
            }
          }
          // MARK: TabView ?
          HStack(spacing: 3) {
            ButtonTabView(label:"DOWNLOADS")
            ButtonTabView(label:"LIBRARY")
            ButtonTabView(label:"SEARCH")
            ButtonTabView(label:"PROFILE")
          }
        }
      }
    }
    .background(Color.black)
  }
}

#Preview {
  ContentView()
}


