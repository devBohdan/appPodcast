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
  // -----------------------------------------------------------------------------
        
  //      // MARK: Button Design
  //      Image("00")
  //        .resizable()
  //        .frame(width: 60, height: 60, alignment: .leading)
        
        
      PlayerButtonView()
      }

  }
}

#Preview {
  ContentView()
}




