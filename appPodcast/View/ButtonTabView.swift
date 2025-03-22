//
//  ButtonTabView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//

import SwiftUI


struct ButtonTabView: View {
  var body: some View {
    // MARK: Button
    Button(action: {}) {
      Text("LIBRARY")
    }
    .font(.system(.footnote, design: .monospaced))
    .foregroundStyle(.white.opacity(0.9))
    
    .frame(width: 99, height: 62, alignment: .center)
    .background(
      Rectangle()
        .fill(
          LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.18),
                                                     Color(hue: 0, saturation: 0, brightness: 0.38),
                                                     Color(hue: 0, saturation: 0, brightness: 0.18)]),
                         startPoint: .top,
                         endPoint: UnitPoint(x: 0.5, y: 0.12))
        )
        .overlay(
          Image("Noize")
            .resizable(resizingMode: .tile)
            .opacity(0.5)
        )
    )
    .overlay(alignment: .top) {
      Rectangle()
        .frame(height: 1)
//        .foregroundColor(Color(hue: 0, saturation: 0, brightness: 0.5).opacity(0.3))
        .overlay(
          LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.28),
                                                     Color(hue: 0, saturation: 0, brightness: 0.48),
                                                     Color(hue: 0, saturation: 0, brightness: 0.28)]),
                         startPoint: .leading,
                         endPoint: UnitPoint(x: 0.5, y: 0.5))
        )
        .offset(y: 3)
    }
  }
}


#Preview {
  HStack(spacing: 1) {
    ButtonTabView()
    ButtonTabView()
    ButtonTabView()
    ButtonTabView()
  }
  
  // MARK: ButtonTabView Design
  HStack(spacing: 1) {
    Image("Tab")
      .resizable()
      .frame(width: 99, height: 62, alignment: .leading)
    Image("Tab")
      .resizable()
      .frame(width: 99, height: 62, alignment: .leading)
    Image("Tab")
      .resizable()
      .frame(width: 99, height: 62, alignment: .leading)
    Image("Tab")
      .resizable()
      .frame(width: 99, height: 62, alignment: .leading)
  }
}
