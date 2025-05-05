//
//  NavBarPreferenceKey.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 05.05.2025.
//


import SwiftUI

struct NavBarTitlePreferenceKey: PreferenceKey {

  static var defaultValue: String = ""
  
  static func reduce(value: inout String, nextValue: () -> String) {
    value = nextValue()
  }
}

struct NavBarSubTitlePreferenceKey: PreferenceKey {
  
  static var defaultValue: String? = nil
  
  static func reduce(value: inout String?, nextValue: () -> String?) {
    value = nextValue()
  }
}

struct NavBarSubHiddenBtnPreferenceKey: PreferenceKey {
  
  static var defaultValue: Bool = false
  
  static func reduce(value: inout Bool, nextValue: () -> Bool) {
    value = nextValue()
  }
}



extension View {
  
  func customNavigationTitle(_ title: String) -> some View {
    self
      .preference(key: NavBarTitlePreferenceKey.self, value: title)
  }
  
  func customNavigationSubTitle(_ subTitle: String?) -> some View {
    self
      .preference(key: NavBarSubTitlePreferenceKey.self, value: subTitle)
  }
  
  func customNavBarBackBtnHidden(_ hidden: Bool) -> some View {
    self
      .preference(key: NavBarSubHiddenBtnPreferenceKey.self, value: hidden)
  }
  
  func customNavBarItems(title: String = "", subTitle: String? = nil, backBtnHidden: Bool = false) -> some View {
    self
      .customNavigationTitle(title)
      .customNavigationSubTitle(subTitle)
      .customNavBarBackBtnHidden(backBtnHidden)
  }
}
