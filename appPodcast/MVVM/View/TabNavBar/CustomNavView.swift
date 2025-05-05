//
//  CustomNavView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavView<Content:View>: View {
  
  let contant:Content
  
  init(@ViewBuilder contant: () -> Content) {
    self.contant = contant()
  }
  
    var body: some View {
      NavigationView {
        
        CustomNavBarContainerView {
          contant
        }
        .navigationBarHidden(true)
      }
      .navigationViewStyle(StackNavigationViewStyle())
      // TODO: Change navigationViewStyle
    }
}

#Preview {
  CustomNavView {
    Text("hi")
  }
}


extension UINavigationController {
  open override func viewDidLoad() {
    super.viewDidLoad()
    interactivePopGestureRecognizer?.delegate = nil
  }
}
