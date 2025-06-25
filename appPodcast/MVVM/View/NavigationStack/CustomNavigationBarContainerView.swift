//
//  CustomNavigationBarContainerView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavigationBarContainerView<Content: View>: View {
  let content: Content
  @State private var title: String = "Title"
  @State private var subTitle: String?

  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }

    var body: some View {
      VStack(spacing: 1) {
        CustomNavigationBarView(title: title, subtitle: subTitle)
        content
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .toolbar(.hidden)

          // TODO: [TEST] TEST THIS BC IT SHOULD BE ONE LVL BELOW
          .onPreferenceChange(NavBarTitlePreferenceKey.self) { value in
            self.title = value
          }
          .onPreferenceChange(NavBarSubtitlePreferenceKey.self) { value in
            self.subTitle = value
          }
          .screenEffect()
      }
    }
}

#Preview {
  CustomNavigationBarContainerView {
    ZStack {
//      Color.red
      Text("Hi")
    }
    .customNavigationTitle("PrevTitle")
    .customNavigationSubtitle("PrevSubTitle")
  }
}
