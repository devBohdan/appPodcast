//
//  MonoFont.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.03.2025.
//

import SwiftUI

extension Font {

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
