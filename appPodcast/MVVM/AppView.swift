//
//  TabBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//


import SwiftUI

struct AppView: View {
  @State private var selection: String = "home"
  @State private var currentSelcetion: TabBarItem = .library
  
  var body: some View {
    CustomTabContainerView(currentTab: $currentSelcetion) {
      Color.blue
        .tabBarItem(tab: .downloads, currentTab: $currentSelcetion)
      Library()
        .tabBarItem(tab: .library, currentTab: $currentSelcetion)
      Color.green
        .tabBarItem(tab: .search, currentTab: $currentSelcetion)
      Color.gray
        .tabBarItem(tab: .profile, currentTab: $currentSelcetion)
    }
  }
}


#Preview {
  AppView()
}
