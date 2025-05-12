//
//  SometypeMonoFont.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.03.2025.
//

import SwiftUI


enum SometypeMono: String {
  case bold     = "SometypeMono-Bold"
  case medium   = "SometypeMono-Medium"
  case regular  = "SometypeMono-Regular"
    
  init(weight: Font.Weight) {
    switch weight {
    case .bold:   self = .bold
    case .medium: self = .medium
    default:      self = .regular
    }
  }
}


extension Font {
  static func customFont(weight: Font.Weight = .regular, size: CGFloat = 16) -> Font {
    Font.custom(SometypeMono(weight: weight).rawValue, size: size)
  }
  
  static var displayTitle: Font { Font.custom(SometypeMono.bold.rawValue, size: 16) }
  static var displayBody: Font { Font.custom(SometypeMono.regular.rawValue, size: 14) }
  static var miniPlayer: Font { Font.custom(SometypeMono.regular.rawValue, size: 14) }
  
  
  /// For "UI"
  /// TabBar
  /// MiniPlayer
  static var monoDisplay2: Font { Font.custom(SometypeMono.regular.rawValue, size: 14) }

  /// For intensive reading
  /// Main display
  /// Progress bar
  static var monoBody2: Font { Font.custom(SometypeMono.regular.rawValue, size: 12) }

  /// Custom
  static var button: Font { Font.custom(SometypeMono.regular.rawValue, size: 14) }
}


#Preview {
  Text("Title").font(.displayTitle)
  Text("Body").font(.displayBody)
  
  Text("Custom").font(.customFont(weight: .medium, size: 12))
}
