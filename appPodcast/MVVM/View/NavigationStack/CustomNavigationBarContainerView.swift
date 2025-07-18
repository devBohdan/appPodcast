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
  @State private var searchText: String = ""

  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }

    var body: some View {
      VStack(spacing: 1) {
        CustomNavigationBarView(title: title, subtitle: subTitle)

        content
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .ignoresSafeArea(.all, edges: .top)
          .toolbar(.hidden)

          // TODO: [TEST] TEST THIS BC IT SHOULD BE ONE LVL BELOW
          .onPreferenceChange(NavBarTitlePreferenceKey.self) { value in
            self.title = value
          }
          .onPreferenceChange(NavBarSubtitlePreferenceKey.self) { value in
            self.subTitle = value
          }
          .withScreenEffect()
      }.background(Color.cBG) // FIXME: [UI] Hide Color.systemBackground line 
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
