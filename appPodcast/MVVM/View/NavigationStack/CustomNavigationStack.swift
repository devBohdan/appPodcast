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

      CustomNavigationBarContainerView {
        content
      }
    }
    // TODO: [UI] Change animation
  }
}

#Preview {
  CustomNavigationStackPreviewWrapper()
}

struct CustomNavigationStackPreviewWrapper: View {
  @State private var path: [EpisodeSample] = []

  var body: some View {
    CustomNavigationStack(path: $path) {
      Text("hi")
    }
  }
}

// swiftlint:disable override_in_extension modifier_order
extension UINavigationController {
  open override func viewDidLoad() {
    super.viewDidLoad()
    interactivePopGestureRecognizer?.delegate = nil
  }
}
// swiftlint:enable override_in_extension modifier_order

// FIXME: [HOW]
// class CustomNavigationController: UINavigationController {
//   override func viewDidLoad() {
//     super.viewDidLoad()
//     interactivePopGestureRecognizer?.delegate = nil
//   }
// }
