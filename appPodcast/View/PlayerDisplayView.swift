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
      Image("Podcast")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 44, height: 44)
        .background(Color(.gray))
        .clipShape(.rect(cornerRadius: 5))
      
      VStack(alignment: .leading) {
        Text("Why Should We Care About Privacy?")
          .lineLimit(2)
          .font(.system(.footnote, design: .monospaced))
        //Text("Artist")
        //  .font(.system(.footnote, design: .monospaced))
      }
      .foregroundStyle(.white.opacity(0.9))
      
      Spacer()
    }
    .padding(9)
    // TODO: Всё что ниже это общее для всех дисплеев
    .border(.black.opacity(0.25), width: 1)
    
    // TODO: Add BG Color, and this set as forground ZStack
    .background(
      LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.1),
                                                 Color(hue: 0, saturation: 0, brightness: 0.05)]),
                     startPoint: UnitPoint(x: 0.25, y: 0),
                     endPoint: UnitPoint(x: 0.75, y: 1))
    )
    .overlay(
      Rectangle()
        .frame(height: 0.5)
        .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 0.4)),
      alignment: .top
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
