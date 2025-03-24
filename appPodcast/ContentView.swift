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
      VStack(spacing: 1) {
        // MARK: List
        ScrollView {
          VStack(spacing: 0){
            EpListView()
            EpListView()
            EpListView()
            EpListView()
            EpListView()
            EpListView()
            EpListView() //7
          }
        }
        .overlay(DisplayBlickView())
        
        VStack(spacing: 2) {
          VStack(spacing: 1) {
            // MARK: Mini Progres Bar
            PlayerProgressBar()
            HStack(alignment: .center, spacing: 2) {  // TODO: alignment: .bottom?
              // MARK: Mini Screen
              PlayerDisplayView()
              // MARK: Mini Buttons
              PlayerButtonView()
              PlayerButtonView()
              PlayerButtonView()
                .padding(.trailing, 2)
            }
          }
          HStack(spacing: 2) {
            ButtonTabView()
            ButtonTabView()
            ButtonTabView()
            ButtonTabView()
          }
        }
      }
    }
    .background(Color.black)
  }
}

#Preview {
  ContentView()
}


