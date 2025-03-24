//
//  PlayerButtonView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 19.03.2025.
//


import SwiftUI

struct PlayerButtonView: View {
  var body: some View {
    
    // MARK: Button
    Button(action: {}) {
      //          Image(systemName: "heart.fill")
      //          Text("Text")
    }
    
    // MARK: Button / Inside
    .labelStyle(.iconOnly)
    .padding(5)  // Padding for ICON
    .frame(minWidth: 32, minHeight: 32)
    .background(
      RoundedRectangle(cornerRadius: 9999, style: .circular)
      .fill(
        Color(hue: 0, saturation: 0, brightness: 0.2)
        // Inner shadow
          .shadow(.inner(color: .white.opacity(0.2), radius: 0.5, x: 0.5, y: 1))
          .shadow(.inner(color: .black.opacity(0.8), radius: 1, x: 0, y: 0))
      )
      // Blick inside
        .strokeBorder(
          RadialGradient(gradient: Gradient(colors: [.white.opacity(0.5),
                                                     .white.opacity(0.5),
                                                     .black.opacity(0.5)]),
                         center: UnitPoint(x: 0.25, y: 0),
                         startRadius: 0,
                         endRadius: 25),
          lineWidth: 0.5)
        .overlay(
          Image("Noize")
            .resizable(resizingMode: .tile)
            .opacity(0.50)
            .clipShape(RoundedRectangle(cornerRadius: 9999))
        )
    )
    // Black shadow
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
    // White shadow
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
    
    
    // MARK: Button / Outside
    .padding(14)  // Padding for inside btn
    .frame(minWidth: 60, minHeight: 60)
    .background(
      RoundedRectangle(cornerRadius: 4, style: .circular)
      .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
      // Blick
      .strokeBorder(
        RadialGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.4),
                                                   Color(hue: 0, saturation: 0, brightness: 0.1)]),
                       center: UnitPoint(x: 0.25, y: 0),
                       startRadius: 0,
                       endRadius: 75),
        lineWidth: 0.5
      )
      .overlay(
        ZStack(alignment: .topLeading) {
          // Borders
            Rectangle()
              .frame(height: 0.5)
              .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 1).opacity(0.1))
            Rectangle()
              .frame(width: 0.5)
              .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 1).opacity(0.1))
          // Noise
            Image("Noize")
              .resizable(resizingMode: .tile)
              .opacity(0.50)
          }
          .clipShape(RoundedRectangle(cornerRadius: 4)),
        alignment: .topLeading
      )
    )
//    .drawingGroup() // TODO: it make btn lighter
  }
}


#Preview {
  PlayerButtonView()
  
  // MARK: Button Design
  Image("00")
    .resizable()
    .frame(width: 60, height: 60, alignment: .leading)
}
