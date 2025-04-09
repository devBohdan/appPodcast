//
//  TabBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//


import SwiftUI

struct CustomTabViewTEST: View {
  
  @State private var selection: String = "home"
  
  var body: some View {
    TabView (selection: $selection) {
      Color.red
        .tabItem {
          Image(systemName: "house")
          Text("1")
        }
      Color.blue
        .tabItem {
          Image(systemName: "heart")
          Text("2")
        }
      Color.yellow
        .tabItem {
          Image(systemName: "person")
          Text("3")
        }
    }
  }
}


#Preview {
    CustomTabViewTEST()
}
