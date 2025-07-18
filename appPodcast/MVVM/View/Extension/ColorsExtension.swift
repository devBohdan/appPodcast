//
//  ColorsExtension.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 12.05.2025.
//

import SwiftUI

extension Color {
  static let cBorder  = Color("borderColor")

  static let cDisable = Color("disableColor")
  static let cDisplay = Color("displayColor")
  static let cTextAcc = Color("textAccColor")
  static let cText    = Color("textColor")

  static let cSpacing = Color("spacingColor")
  static let cBG      = Color("BGcolor")
  static let cSecBG   = Color("SecondBGcolor")
}

struct ColorsExtension: View {
  var body: some View {
    ZStack {
      VStack(spacing: 15) {
        Text("borderColor") .foregroundStyle(Color.cBorder)
          .background(Color.cBG)
        Text("disableColor").foregroundStyle(Color.cDisable)
          .background(Color.cBG)
        Text("displayColor").foregroundStyle(Color.cDisplay)
          .background(Color.cBG)
        Text("textAccColor").foregroundStyle(Color.cTextAcc)
          .background(Color.cBG)
        Text("textColor").foregroundStyle(Color.cText)
          .background(Color.cBG)
      }
      .frame(width: 300, height: 300)
      .background(Color.blue) // cSpacing
    }
  }
}

#Preview {
  ColorsExtension()
}
