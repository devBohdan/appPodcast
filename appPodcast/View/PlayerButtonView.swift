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
    // FIXME: Контрастрнее цвета, чёрный чернее. Блик умеништьб до 20%
    Button(action: {}) {
      //          Image(systemName: "heart.fill")
      //          Text("Text")
    }
    
    // MARK: Button / Inside
    .labelStyle(.iconOnly)
    .padding(5)  // Padding for ICON
    .frame(minWidth: 32, minHeight: 32)
    .background(
      RoundedRectangle(
        cornerRadius: 999,
        style: .circular
      )
      .fill(
        Color(hue: 0, saturation: 0, brightness: 0.2)
        // Inner shadow
          .shadow(.inner(color: .white.opacity(0.2), radius: 0.5, x: 0.5, y: 1))
          .shadow(.inner(color: .black.opacity(0.8), radius: 1, x: 0, y: 0))
      )
      
      .strokeBorder(
        RadialGradient(gradient: Gradient(colors: [.white.opacity(0.5),
                                                   .white.opacity(0.5),
                                                   .black.opacity(0.5)]),
                       center: UnitPoint(x: 0.25, y: 0),  // TODO: Сделать как констатну
                       startRadius: 0,                   // Или нет, потому что исп только тут
                       endRadius: 25),
        lineWidth: 0.5)
      .overlay(
        Image("Noize")
          .resizable(resizingMode: .tile)
          .opacity(0.50)
          .cornerRadius(999) // TODO:  ко всему
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
      RoundedRectangle(
        cornerRadius: 4,
        style: .circular
      )
      .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
      .strokeBorder(
        RadialGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.45),
                                                   Color(hue: 0, saturation: 0, brightness: 0.1)]),
                       // TODO: Добавить стоку слева и справа
                       center: UnitPoint(x: 0.25, y: 0),  // TODO: Сделать как констатну
                       startRadius: 0,                   // Или нет, потому что исп только тут
                       endRadius: 50),
        lineWidth: 0.5)
      .overlay(
        Image("Noize")
          .resizable(resizingMode: .tile)
          .opacity(0.50)
          .cornerRadius(4) // TODO:  ко всему
      )
    )
  }
}
