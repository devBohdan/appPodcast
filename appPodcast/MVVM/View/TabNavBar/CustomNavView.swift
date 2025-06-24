//
//  CustomNavView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavView<Content: View>: View {

  let contant: Content

  init(@ViewBuilder contant: () -> Content) {
    self.contant = contant()
  }

    var body: some View {
      NavigationView {

        CustomNavBarContainerView {
          contant
        }
//        .navigationBarHidden(true)
      }
//      .navigationViewStyle(StackNavigationViewStyle())
      // TODO: [UI] Change navigationViewStyle
    }
}

#Preview {
  CustomNavView {
    Text("hi")
  }
}

// swiftlint: disable override_in_extension
extension UINavigationController {
  override open func viewDidLoad() {
    super.viewDidLoad()
    interactivePopGestureRecognizer?.delegate = nil
  }
}
// swiftlint: enable override_in_extension
