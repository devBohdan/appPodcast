//
//  CustomNavigationLink.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavigationLink<Label:View, Destination:View>: View {
  
  let destination: Destination
  let label: Label
  
  // Как в документации у NavigationLink
  init(@ViewBuilder destination: () -> Destination, @ViewBuilder label: () -> Label) {
    self.destination = destination()
    self.label = label()
  }
  // Фикс(?), что бы код был такой же как у NavigationLink
  init(destination: Destination, @ViewBuilder label: () -> Label) {
    self.destination = destination
    self.label = label()
  }
  
  var body: some View {
    NavigationLink(
      destination: CustomNavBarContainerView(content: { destination })
        .navigationBarHidden(true),
      label: { label }
    )
  }
}

#Preview {
  CustomNavView{
    CustomNavigationLink(
      destination: Text("destination"),
      label: { Text("Nav2") }
    )
  }
}
