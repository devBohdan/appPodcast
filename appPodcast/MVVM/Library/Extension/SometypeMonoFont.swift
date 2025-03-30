//
//  SometypeMonoFont.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.03.2025.
//

import SwiftUI

struct SometypeMonoFont: View {
  var body  : some View { Text("Hello, World!") }
}


enum SometypeMono: String {
  case regular = "SometypeMono-Regular"
  case medium = "SometypeMono-Medium"
  case bold = "SometypeMono-Bold"
    
  init(weight: Font.Weight) {
    switch weight {
    case .medium: self = .medium
    case .bold:   self = .bold
    default:      self = .regular
    }
  }
}


extension Font {

  static func customFont(weight: Font.Weight = .regular, size: CGFloat = 16) -> Font {
    Font.custom(SometypeMono(weight: weight).rawValue, size: size)
  }
  
  static var displayTitle: Font { Font.custom(SometypeMono.bold.rawValue, size: 16) }
  static var displayBody: Font { Font.custom(SometypeMono.regular.rawValue, size: 16) }
}


#Preview {
  Text("Title").font(.displayTitle)
  Text("Body").font(.displayBody)
  
  Text("Custom").font(.customFont(weight: .medium, size: 12))
}
