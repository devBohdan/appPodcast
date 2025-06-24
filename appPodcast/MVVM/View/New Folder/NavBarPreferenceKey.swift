//
//  NavBarPreferenceKey.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 05.05.2025.
//

import SwiftUI

/// Title
struct NavBarTitlePreferenceKey: PreferenceKey {
  static var defaultValue: String = ""

  static func reduce(value: inout String, nextValue: () -> String) {
    value = nextValue()
  }
}

/// Subtitle
struct NavBarSubtitlePreferenceKey: PreferenceKey {
  static var defaultValue: String?

  static func reduce(value: inout String?, nextValue: () -> String?) {
    value = nextValue()
  }
}

// TODO: [FIX] Delete?
struct NavBarSubHiddenBtnPreferenceKey: PreferenceKey {
  static var defaultValue: Bool = false

  static func reduce(value: inout Bool, nextValue: () -> Bool) {
    value = nextValue()
  }
}

extension View {

  /// Title
  func customNavigationTitle(_ title: String) -> some View {
    preference(key: NavBarTitlePreferenceKey.self, value: title)
  }

  /// Subtitle
  func customNavigationSubtitle(_ subtitle: String?) -> some View {
    preference(key: NavBarSubtitlePreferenceKey.self, value: subtitle)
  }

  /// Delete?
  func customNavBarBackBtnHidden(_ hidden: Bool) -> some View {
    preference(key: NavBarSubHiddenBtnPreferenceKey.self, value: hidden)
  }

  func customNavBarItems(title: String = "", subTitle: String? = nil, backBtnHidden: Bool = false) -> some View {
    self
      .customNavigationTitle(title)
      .customNavigationSubtitle(subTitle)
      .customNavBarBackBtnHidden(backBtnHidden)
  }
}
