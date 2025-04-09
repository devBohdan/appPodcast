//
//  CustomTabView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 07.04.2025.
//

import SwiftUI

struct CustomTabView: View {
  var tabs = ["DOWNLOADS", "LIBRARY", "SEARCH", "PROFILE"]
  
  var body : some View {
    HStack(spacing: 2) {
      ForEach(tabs, id: \.self) { tab in
        ButtonTabView(label: tab)
      }
    }
    
  }
}


struct ButtonTabView: View {
  let label: String
  
  var body: some View {
    Button(action: {}) {
      HStack {
        Spacer()
        Text(label)
        Spacer()
      }
    }
    // Font
    .font(.button)
    .foregroundStyle(.white.opacity(0.9))
    
    // Size
    .frame(height: 44, alignment: .bottom)
    .offset(y: -5)
    .background(
      Rectangle()
      // Color
        .fill(
          LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.1),
                                                     Color(hue: 0, saturation: 0, brightness: 0.4),
                                                     Color(hue: 0, saturation: 0, brightness: 0.2)]),
                         startPoint: .top,
                         endPoint: UnitPoint(x: 0.5, y: 0.12))
        )
        .overlay(
          ZStack(alignment: .topLeading) {
            // Glare
            Rectangle()
              .frame(height: 1)
              .overlay(
                LinearGradient(gradient: Gradient(
                  colors: [Color(hue: 0, saturation: 0, brightness: 0.4),
                           Color(hue: 0, saturation: 0, brightness: 0.5),
                           Color(hue: 0, saturation: 0, brightness: 0.4)]
                ),
                               startPoint: .leading,
                               endPoint: UnitPoint(x: 0.7, y: 0.5))
              )
              .offset(y: 4)
            
            // Left Border
            Rectangle()
              .frame(width: 1)
              .foregroundColor(Color(hue: 0, saturation: 0, brightness: 0.3))
              .clipped()
            
            // Noise
            Image("Noize")
              .resizable(resizingMode: .tile)
              .opacity(0.5)
          }
        ).ignoresSafeArea(edges: .bottom)
    )
  }
}


#Preview {
  Spacer()
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
  CustomTabView()
}
