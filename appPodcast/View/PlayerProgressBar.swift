//
//  PlayerProgressBar.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//

import SwiftUI
  
struct PlayerProgressBar: View {
  var body: some View {
    // MARK: Display
    HStack {
      Text("26:20")
        .frame(maxWidth: .infinity, alignment: .leading)
      Text("Chatpter 11")
        .frame(maxWidth: .infinity, alignment: .center)
      Text("41:05 left")
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
    .font(.system(.footnote, design: .monospaced))
    .foregroundStyle(.white.opacity(0.9))
    
    .padding(.horizontal, 10)
    .padding(.vertical, 2)
    
    // TODO: Add BG Color, and this set as forground ZStack
    .border(.black.opacity(0.25), width: 1)
    .background(
      LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.1),
                                                 Color(hue: 0, saturation: 0, brightness: 0.05)]),
                     startPoint: UnitPoint(x: 0.25, y: 0),
                     endPoint: UnitPoint(x: 0.75, y: 1))
    )
    // Border Top
    .overlay(
      Rectangle()
        .frame(height: 0.5)
        .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 0.4)),
      alignment: .top
    )
    // MARK: Progress
    .overlay(
      Rectangle().frame(width: 100).foregroundStyle(.white.opacity(0.1)), alignment: .leading)
  }
}


#Preview {
  PlayerProgressBar()
  
  // MARK: Button Design
  Image("Progress bar")
    .resizable()
    .frame(width: 420, height: 19, alignment: .leading)
}
