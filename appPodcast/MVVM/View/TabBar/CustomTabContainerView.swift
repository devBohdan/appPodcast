//
//  CustomTabContainerView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 09.04.2025.
//

import SwiftUI

// TODO: TabStyle

struct CustomTabContainerView<Content: View>: View {
  
  @Binding var currentTab: TabBarItem
  let content: Content
  @State private var tabs: [TabBarItem] = []
  
  init(currentTab: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
    self._currentTab = currentTab
    self.content = content()
  }
  
  var body: some View {
    VStack(spacing: 0) {
      ZStack {
        content
      }
      CustomTabBtnView(tabs: tabs , currentTab: $currentTab)
    }
    .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in self.tabs = value})
  }
}

#Preview {
  let tabs: [TabBarItem] = [.downloads, .library, .profile, .search]
  
  CustomTabContainerView(currentTab: .constant(tabs.first!)) {
    Color.red
  }
}

