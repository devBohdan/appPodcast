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
    
    // MARK: Progress
    .overlay(
      Rectangle().frame(width: 100).foregroundStyle(.white.opacity(0.1)),
      alignment: .leading
    )
    .withGlare()
  }
}


#Preview {
  PlayerProgressBar()
  
  // MARK: Button Design
  Image("Progress bar")
    .resizable()
    .frame(width: 420, height: 19, alignment: .leading)
}
