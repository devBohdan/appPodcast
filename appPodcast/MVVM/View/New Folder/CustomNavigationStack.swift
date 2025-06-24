//
//  CustomNavigationStack.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 17.06.2025.
//

import SwiftUI

struct CustomNavigationStack<T: Hashable, Content: View>: View {
  @Binding var path: [T]

  let content: Content

  init(path: Binding<[T]>, @ViewBuilder content: () -> Content ) {
    self._path = path
    self.content = content()
  }

  var body: some View {
    NavigationStack(path: $path) {

      CustomNavBarContainerView {
        content
      }
      .navigationBarBackButtonHidden()
    }
//    .navigationViewStyle(StackNavigationViewStyle())
    // TODO: [UI] Change navigationViewStyle
  }
}

#Preview {
  CustomNavigationStackPreviewWrapper()
}

struct CustomNavigationStackPreviewWrapper: View {
  @State private var path: [Episode] = []

  var body: some View {
    CustomNavigationStack(path: $path) {
      Text("hi")
    }
  }
}
