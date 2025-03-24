//
//  DisplayBlickView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 24.03.2025.
//

import SwiftUI


struct DisplayBlickView: View {
  var body: some View {
    
    // MARK: Display Blick
    Rectangle()
      .foregroundStyle(
        LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 1),
                                                   Color(hue: 0, saturation: 0, brightness: 0.5)]),
                       startPoint: UnitPoint(x: 0.25, y: 0),
                       endPoint: UnitPoint(x: 0.75, y: 1)).opacity(0.1)
      )
      .overlay(
        ZStack(alignment: .top) {
          Rectangle()
            .strokeBorder(Color(hue: 0, saturation: 0, brightness: 0.075), lineWidth: 2)
          
          Rectangle()
            .frame(height: 0.5)
            .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 0.4))
        }
      )
      .allowsHitTesting(false)
  }
}


#Preview {
  DisplayBlickView()
    .frame(width: 200, height: 100)
}
