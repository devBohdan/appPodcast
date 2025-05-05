//
//  CustomNavBarContainerView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
  let content: Content
  @State private var showBackBtn: Bool = true
  @State private var title: String = "Title"
  @State private var subTitle: String? = nil
  
  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }
  
    var body: some View {
      VStack(spacing: 0) {
        CustomNavBarView(showBackBtn: showBackBtn, title: title, subTitle: subTitle)
        content
          .frame(maxWidth: .infinity, maxHeight: .infinity)
      }
      .onPreferenceChange(NavBarTitlePreferenceKey.self) { value in
        self.title = value
      }
      .onPreferenceChange(NavBarSubTitlePreferenceKey.self) { value in
        self.subTitle = value
      }
      .onPreferenceChange(NavBarSubHiddenBtnPreferenceKey.self) { value in
        self.showBackBtn = !value
      }
    }
}

#Preview {
  CustomNavBarContainerView {
    ZStack {
      Color.red
      Text("Hi")
        .customNavigationTitle("PrevTitle")
        .customNavigationSubTitle("PrevSubTitle")
        .customNavBarBackBtnHidden(true)
    }
  }
}
