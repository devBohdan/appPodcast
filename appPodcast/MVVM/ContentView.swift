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
          // MARK: TabView
          let tabs: [TabBarItem] = [TabBarItem(title:"DOWNLOADS"),
                                    TabBarItem(title:"LIBRARY"),
                                    TabBarItem(title:"SEARCH"),
                                    TabBarItem(title:"PROFILE")]
          CustomTabView(tabs: tabs,
                        currentTab: .constant(tabs.first ?? TabBarItem(title: "LIBRARY")))
        }
      }
    }
    .background(Color.black)
  }
}

#Preview {
  ContentView()
}


