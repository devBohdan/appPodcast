//
//  PlayerButtonView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 19.03.2025.
//


import SwiftUI

struct PlayerButtonView: View {
  
  private let insideBorderGradient = RadialGradient(
    gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.7),
                                Color(hue: 0, saturation: 0, brightness: 0.5),
                                Color(hue: 0, saturation: 0, brightness: 0)]),
    center: UnitPoint(x: 0.25, y: 0),
    startRadius: 0,
    endRadius: 25
  )
  private let outsideBorderGradient = RadialGradient(
    gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.5),
                                Color(hue: 0, saturation: 0, brightness: 0.5),
                                Color(hue: 0, saturation: 0, brightness: 0.15),
                                Color(hue: 0, saturation: 0, brightness: 0.15)]),
    center: UnitPoint(x: 0, y: 0),
    startRadius: 0,
    endRadius: 100
  )
  
  
  private func buttonBG(_ borderGradient: RadialGradient ,corner: CGFloat) -> some View {
    RoundedRectangle(cornerRadius: corner, style: .circular)
      .fill(
        Color(hue: 0, saturation: 0, brightness: 0.2)
        // Inner shadow
          .shadow(.inner(color: .white.opacity(0.2), radius: 0.5, x: 0.5, y: 1))
          .shadow(.inner(color: .black.opacity(0.8), radius: 1, x: 0, y: 0))
      )
    // Glare
      .strokeBorder(borderGradient ,lineWidth: 0.5)
    
      .overlay(
        Image("Noize")
          .resizable(resizingMode: .tile)
          .opacity(0.50)
          .clipShape(RoundedRectangle(cornerRadius: corner))
      )
  }
  
  var body: some View {
    // MARK: Button
    Button(action: {}) {
      // Text/Icon
    }
    // MARK: Inside button
    .padding(5)
    .frame(minWidth: 32, minHeight: 32)
    .background(buttonBG(insideBorderGradient, corner: 999))
    // MARK: Shadows
    // TODO: ZStack all .backgrounds
    // Black
    .background(  // 0
      RoundedRectangle(cornerRadius: 999, style: .circular)
        .fill(Color(.black))
        .opacity(1)
        .shadow(color: .black, radius: 2, x: 1, y: 2)
        .blur(radius: 0, opaque: false)
        .blendMode(.darken)
    )
    .background( // 1
      RoundedRectangle(cornerRadius: 999, style: .circular)
        .fill(Color(.black))
        .opacity(1)
        .shadow(color: .black, radius: 0, x: 1, y: 2)
        .blur(radius: 10, opaque: false)
        .blendMode(.darken)
    )
    .background(  // 2
      RoundedRectangle(cornerRadius: 999, style: .circular)
        .fill(Color(.black))
        .opacity(1)
        .shadow(color: .black, radius: 2, x: 1, y: 2)
        .blur(radius: 10, opaque: false)
        .blendMode(.softLight)
    )
    .background(  // 3
      RoundedRectangle(cornerRadius: 999, style: .circular)
        .fill(Color(.black))
        .opacity(1)
        .shadow(color: .black, radius: 2, x: -1, y: -2)
        .blur(radius: 4, opaque: false)
        .blendMode(.overlay)
    )
    .background(  // 4
      RoundedRectangle(cornerRadius: 999, style: .circular)
        .fill(Color(.black))
        .opacity(1)
        .shadow(color: .black, radius: 0, x:  -1, y:  -2)
        .blur(radius: 4, opaque: false)
        .blendMode(.overlay)
    )
    // White
    .background( //5
      RoundedRectangle(cornerRadius: 999, style: .circular)
        .fill(Color(.white))
        .opacity(0.2)
        .shadow(color: .white, radius: 4, x: -3, y: -6)
        .blur(radius: 4, opaque: false)
        .blendMode(.screen)
    )
    .background(  // 6
      RoundedRectangle(cornerRadius: 999, style: .circular)
        .fill(Color(.white))
        .opacity(0.75)
        .shadow(color: .white, radius: 4, x: -2, y: -4)
        .blur(radius: 1, opaque: false)
        .blendMode(.plusLighter)
    )
    // MARK: Outside button
    .padding(14)
    .frame(minWidth: 60, minHeight: 60)
    .background(buttonBG(outsideBorderGradient, corner: 4))
    // .drawingGroup() // TODO: it make btn lighter
  }
}


#Preview {
  VStack {
    PlayerButtonView()
    // MARK: Button Design
    Image("00")
      .resizable()
      .frame(width: 60, height: 60, alignment: .leading)
  }
  .scaleEffect(6)
}
