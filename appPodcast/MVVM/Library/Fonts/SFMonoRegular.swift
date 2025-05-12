//
//  SFMonoRegular.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 11.05.2025.
//


import SwiftUI


//enum SFMonoRegular: String {
//  case regular  = "SF-Mono-Regular"
//    
//  init(weight: Font.Weight) {
//    switch weight {
////    case .regular: self = .regular
//    default:      self = .regular
//    }
//  }
//}


extension Font {
//  /// Custom
//  static func sfCustomFont(weight: Font.Weight = .regular, size: CGFloat = 16) -> Font {
//    Font.custom(SFMonoRegular(weight: weight).rawValue, size: size)
//  }
//  /// For "UI"
//  static var sfMonoDisplay: Font { Font.custom(SFMonoRegular.regular.rawValue, size: 14) }
//
//  /// For intensive reading
//  static var sfMonoBody: Font { Font.custom(SFMonoRegular.regular.rawValue, size: 12) }
//  
//  
//  
  
  static var monoBody: Font {
    Font.system(size: 12, design: .monospaced) }
  
  static var monoDisplay: Font {
    Font.system(size: 14, design: .monospaced) }
  
}


#Preview {
  VStack(alignment: .leading) {
    
//    Text("Title").font(.sfMonoDisplay)
//    Text("wwwww").font(.sfMonoDisplay)
//    Text("wwwww").font(.system(size: 14))
//    Text("---")
//    
//    Text("SFMonoRegular").font(.sfMonoBody)
//    Text("wwwwwwwwwwwww").font(.sfMonoBody)
//    Text("wwwwwwwwwwwww").font(.system(size: 12))
//    Text("---")
//
//    
//    Text("Custom").font(.sfCustomFont(size: 9)).monospaced()
//    Text("wwwwww").font(.sfCustomFont(size: 9)).monospaced()
//    Text("wwwwww").font(.system(size: 9))

    
    Text("Custom2").font(Font.system(size: 12, design: .monospaced))
    Text("wwwwww2").font(Font.system(size: 12, design: .monospaced))
    
  }
}
