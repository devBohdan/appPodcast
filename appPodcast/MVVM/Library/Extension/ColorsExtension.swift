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
  static let cSecBG   = Color("SecondBGcolor")
}


struct ColorsExtension: View {
  var body: some View {
    Text("borderColor") .foregroundStyle(Color.cBorder)
    Text("disableColor").foregroundStyle(Color.cDisable)
    Text("displayColor").foregroundStyle(Color.cDisplay)
    Text("textAccColor").foregroundStyle(Color.cTextAcc)
    Text("textColor")   .foregroundStyle(Color.cText)
  }
}

#Preview {
  ColorsExtension()
}
