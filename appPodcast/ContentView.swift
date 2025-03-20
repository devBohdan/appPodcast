//
//  ContentView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.02.2025.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      // MARK: BG Design
      Image("CONTENT")
        .resizable()
        .edgesIgnoringSafeArea(.all)
        .scaledToFill()
      //------------------------------------------------------------------------
      
      
      VStack {
        Spacer()
        
        HStack(alignment: .bottom, spacing: 2) {
          // MARK: Screen
          PlayerDisplayView()
          
          // MARK: Buttons
          PlayerButtonView()
          PlayerButtonView()
          PlayerButtonView()
        }
        Spacer()
      }
    }
  }
}

#Preview {
  ContentView()
}


