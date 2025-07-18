//
//  SearchBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 30.06.2025.
//

import SwiftUI

struct SearchBarView: ViewModifier {
  @Binding var searchText: String

  func body(content: Content) -> some View {
    VStack {
      Text(" ┌─────────────────────────────────────────────────────┐ ")

      HStack {
        Text("   SEARCH:")
          .foregroundStyle(Color.cTextAcc)
        TextField("podcast, episode or rss url", text: $searchText)
          .foregroundStyle(Color.cText)
        Text("x    ")
          .onTapGesture { searchText = "" }
          .opacity(searchText.isEmpty ? 0.0 : 1.0)
      }
      .font(.monoDisplay)

      Text(" └─────────────────────────────────────────────────────┘ ")

      Text("─────────────────────────────────────────────────────────")
    }
    .font(.monoBody)
    .foregroundStyle(Color.cBorder)
    .background(Color.cBG)

    content
  }
}

extension View {
  func customSearchable(searchText: Binding<String>) -> some View {
    modifier(SearchBarView(searchText: searchText))
  }
}
