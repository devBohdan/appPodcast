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
      
      
      HStack(alignment: .bottom, spacing: 2) {
        // MARK: Screen
        HStack {
          Image(systemName:"")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 44, height: 44)
            .background(
              Color(.gray)
            )
            .cornerRadius(5)
          
          VStack(alignment: .leading) {
            Text("Name")
            Text("Artist")
          }
          Spacer()
        }
        .padding(8)  // Увеличить только высоту на 1
        .background(
          Color(.black)
        )
        // MARK: Buttons
        PlayerButtonView()
        PlayerButtonView()
        PlayerButtonView()
      }
    }
  }
}

#Preview {
  ContentView()
}




