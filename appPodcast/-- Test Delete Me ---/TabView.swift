//
//  TabBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 21.03.2025.
//


import SwiftUI

struct TextLabel2: View {
  var text: String
  var fontStyle: Font.TextStyle = .body
  var lines: Int? = nil

  var body: some View {
    Text(text)
      .font(.system(fontStyle, design: .monospaced))  // TODO: My own styles?
      .foregroundStyle(.white.opacity(0.9))
      .lineLimit(lines)
  }
}

/*_ font: Font.TextStyle = .body,*/
//      .font(.system(font, design: .monospaced))  // TODO: My own styles?

struct TabBarView: View {

  var body: some View {
    TabView {
      TextLabel2(text: "0")
        .tabItem {
          Label("Menu", systemImage: "list.dash")
        }
      
      TextLabel2(text: "1")
        .tabItem {
          Label("Order 1", systemImage: "square.and.pencil")
        }
    }
    .ignoresSafeArea()
  }
}
