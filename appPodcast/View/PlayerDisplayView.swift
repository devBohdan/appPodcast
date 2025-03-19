//
//  PlayerDisplayView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 19.03.2025.
//


import SwiftUI

struct PlayerDisplayView: View {
  var body: some View {
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
  }
}


#Preview {
  PlayerDisplayView()
    .frame(width: 214, height: 61, alignment: .leading)
  
  // MARK: Button Design
  Image("DesignPlayerDisplay")
    .resizable()
    .frame(width: 214, height: 61, alignment: .leading)
}
