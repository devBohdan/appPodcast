//
//  TabBarItem.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 24.04.2025.
//

import SwiftUI

// struct TabBarItem: Hashable {
//   let title: String
// }

enum TabBarItem: Hashable {
  case downloads, library, search, profile

  var title: String {
    switch self {
    case .downloads: return "DOWNLOADS"
    case .library: return "LIBRARY"
    case .search: return "SEARCH"
    case .profile: return "PROFILE"
    }
  }
}
