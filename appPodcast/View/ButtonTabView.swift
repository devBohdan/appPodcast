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
      Spacer()
      Text("LIBRARY")
      Spacer()
    }
    // Font
    .font(.system(.footnote, design: .monospaced))
    .foregroundStyle(.white.opacity(0.9))
    
    // Size
    .frame(height: 62, alignment: .center)
    
    .background(
      Rectangle()
      // Color
        .fill(
          LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.2),
                                                     Color(hue: 0, saturation: 0, brightness: 0.4),
                                                     Color(hue: 0, saturation: 0, brightness: 0.2)]),
                         startPoint: .top,
                         endPoint: UnitPoint(x: 0.5, y: 0.12))
        )
      // Blick
        .overlay(alignment: .top) {
          Rectangle()
            .frame(height: 1)
            .overlay(
              LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.4),
                                                         Color(hue: 0, saturation: 0, brightness: 0.5),
                                                         Color(hue: 0, saturation: 0, brightness: 0.4)]),
                             startPoint: .leading,
                             endPoint: UnitPoint(x: 0.7, y: 0.5))
            )
            .offset(y: 3)
        }
      
        .overlay(
          ZStack(alignment: . leading) {
            // Noise
            Image("Noize")
              .resizable(resizingMode: .tile)
              .opacity(0.5)
            // Left Border
            Rectangle()
              .frame(width: 1)
              .overlay(
                Color(Color(hue: 0, saturation: 0, brightness: 0.25))
              )
              .clipped()
          }
        )
    )
  }
}


#Preview {
  HStack(spacing: 2) {
    ButtonTabView()
    ButtonTabView()
    ButtonTabView()
    ButtonTabView()
  }
  
  // MARK: ButtonTabView Design
  HStack(spacing: 2) {
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
