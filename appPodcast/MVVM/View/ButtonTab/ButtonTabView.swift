//
//  ButtonTabView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//

import SwiftUI


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
    .frame(height: 62, alignment: .center)
    
    
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
              .offset(y: 3)
            
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
        )
    )
  }
}


#Preview {
  HStack(spacing: 2) {
    ButtonTabView(label:"DOWNLOADS")
    ButtonTabView(label:"LIBRARY")
    ButtonTabView(label:"SEARCH")
    ButtonTabView(label:"PROFILE")
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
