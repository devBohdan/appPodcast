//
//  ContentView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.02.2025.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Spacer()
      VStack(spacing: 2) {
        VStack(spacing: 1) {
          // MARK: Mini Progres Bar
          PlayerProgressBar()
          HStack(alignment: .bottom, spacing: 2) {
            // MARK: Mini Screen
            PlayerDisplayView()
            // MARK: Mini Buttons
            PlayerButtonView()
            PlayerButtonView()
            PlayerButtonView()
              .padding(.trailing, 2)
          }
        }
        HStack(spacing: 1) {
          ButtonTabView()
          ButtonTabView()
          ButtonTabView()
          ButtonTabView()
        }
      }
    }
  }
}

#Preview {
  ContentView()
}


