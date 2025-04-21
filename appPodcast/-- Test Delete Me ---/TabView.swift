//
//  TabBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//


import SwiftUI

struct CustomTabViewTEST: View {
  @State private var selection: String = "home"
  @State private var currentSelcetion: TabBarItem = TabBarItem(title:"LIBRARY")
  
  var body: some View {
    CustomTabContainerView(currentTab: $currentSelcetion) {
      Color.blue
        .tabBarItem(tab: TabBarItem(title:"DOWNLOADS"), currentTab: $currentSelcetion)
      Color.red
        .tabBarItem(tab: TabBarItem(title:"LIBRARY"), currentTab: $currentSelcetion)
      Color.green
        .tabBarItem(tab: TabBarItem(title:"SEARCH"), currentTab: $currentSelcetion)
      Color.gray
        .tabBarItem(tab: TabBarItem(title:"PROFILE"), currentTab: $currentSelcetion)
    }
  }
}

extension CustomTabViewTEST  {
  private var  defaultTabView: some View {
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
  let tabs: [TabBarItem] = [TabBarItem(title:"DOWNLOADS"),
                            TabBarItem(title:"LIBRARY"),
                            TabBarItem(title:"SEARCH"),
                            TabBarItem(title:"PROFILE")]
  
    CustomTabViewTEST()
}
