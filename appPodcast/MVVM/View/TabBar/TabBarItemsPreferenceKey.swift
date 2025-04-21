//
//  TabBarItemsPreferenceKey.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.04.2025.
//

import Foundation
import SwiftUI

struct TabBarItemsPreferenceKey: PreferenceKey {
  static var defaultValue: [TabBarItem] = []
  
  static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
    value += nextValue()
  }
}


struct TabBarItemViewModifier: ViewModifier {
  let tab: TabBarItem
  @Binding var currentTab: TabBarItem
  
  func body(content: Content) -> some View {
    content
      .opacity(currentTab == tab ? 1.0 : 0.0 )
      .preference(key: TabBarItemsPreferenceKey.self, value: [tab])
  }
}

extension View {
  func tabBarItem(tab: TabBarItem, currentTab: Binding<TabBarItem>) -> some View {
    self.modifier(TabBarItemViewModifier(tab: tab, currentTab: currentTab))
  }
}
