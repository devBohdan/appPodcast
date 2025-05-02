//
//  CustomNavBarContainerView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
  let content: Content
  
  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }
  
    var body: some View {
      VStack(spacing: 0) {
        CustomNavBarView()
        content
          .frame(maxWidth: .infinity, maxHeight: .infinity)
      }
    }
}

#Preview {
  CustomNavBarContainerView {
    ZStack {
      Color.red
      Text("Hi")
    }
  }
}
