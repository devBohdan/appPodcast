//
//  TabBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//


import SwiftUI

struct TabBarView: View {
  var body: some View {
    TabView {
      ContentView()
        .tabItem {
          Label("Menu", systemImage: "list.dash")
        }
      
      ContentView()
        .tabItem {
          Label("Order", systemImage: "square.and.pencil")
        }
      
      ContentView()
        .tabItem {
          Label("Order", systemImage: "square.and.pencil")
        }
      
      ContentView()
        .tabItem {
          Label("Order", systemImage: "square.and.pencil")
        }
    }
    .ignoresSafeArea()
  }
}

#Preview {
  TabBarView()
}


