//
//  ScreenEffect.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 24.03.2025.
//

import SwiftUI

struct ScreenEffect: ViewModifier {
  let showBorder: Bool

  func body(content: Content) -> some View {
    content

    // Screen bg color
      .background(Color.cBG)

    // Screen effect
      .overlay(
        ZStack(alignment: .top) {

          // Border
          if showBorder {
            Rectangle()
              .frame(height: 0.5)
              .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 0.4))
          }

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
  func withScreenEffect(showBorder: Bool = true) -> some View {
    modifier(ScreenEffect(showBorder: showBorder))
  }
}

#Preview {
  Rectangle()
    .foregroundStyle(.black)
    .frame(width: 200, height: 400)
    .withScreenEffect()
}
