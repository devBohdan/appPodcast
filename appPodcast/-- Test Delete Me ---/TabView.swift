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
      .font(.system(fontStyle, design: .monospaced))
      .foregroundStyle(.white.opacity(0.9))
      .lineLimit(lines)
  }
}


struct TabBarView: View {
  var body: some View {
    TabView {
      TextLabel2(text: "0")
        .tabItem {
          Label("Menu", systemImage: "list.dash")
        }
      
      TextLabel2(text: "1")
        .tabItem {
          ButtonTabView(label:"LIBRARY")
        }
    }
    .tabViewStyle(.page)
    .ignoresSafeArea()
  }
}


#Preview {
  TabBarView()
}
