//
//  Glare.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 24.03.2025.
//

import SwiftUI


struct Glare: ViewModifier {
  func body(content: Content) -> some View {
    content
      .overlay(
        ZStack(alignment: .top) {
          // Border
          Rectangle()
            .frame(height: 0.5)
            .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 0.4))
          // Glare
          Rectangle()
            .foregroundStyle(
              LinearGradient(
                gradient: Gradient(
                  colors: [Color(hue: 0, saturation: 0, brightness: 1),
                           Color(hue: 0, saturation: 0, brightness: 0.5)]
                ),
                startPoint: UnitPoint(x: 0.25, y: 0),
                endPoint: UnitPoint(x: 0.75, y: 1)
              ).opacity(0.1)
            )
        }.allowsHitTesting(false).ignoresSafeArea()
      )
  }
}


extension View {
  func withGlare() -> some View {
    modifier(Glare())
  }
}


#Preview {
  Rectangle()
    .foregroundStyle(.black)
    .frame(width: 200, height: 400)
    .withGlare()
}
