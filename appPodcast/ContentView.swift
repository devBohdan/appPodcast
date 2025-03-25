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
        }
        .overlay(DisplayBlickView())
        
        VStack(spacing: 2) {
          // MARK: Mini Player
          VStack(spacing: 1) {
            PlayerProgressBar()
            HStack(alignment: .center, spacing: 2) {  // TODO: alignment: .bottom?
              PlayerDisplayView()
              PlayerButtonView()
              PlayerButtonView()
              PlayerButtonView()
                .padding(.trailing, 2)
            }
          }
          // MARK: TabView ?
          HStack(spacing: 2) {
            ButtonTabView()
            ButtonTabView()
            ButtonTabView()
            ButtonTabView()
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


