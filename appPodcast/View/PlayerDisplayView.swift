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
        .background(Color(.gray))
        .clipShape(.rect(cornerRadius: 5))
      
      VStack(alignment: .leading) {
        Text("Why Should We Care About Privacy?")
          .font(.custom("Sometype Mono", size: 14))
        Text("Artist")
          .font(.custom("Sometype Mono", size: 14))
      }
      .foregroundStyle(.white.opacity(0.9))
//      .environment(\.font, .custom("Sometype Mono", size: 14))

      Spacer()
    }
    .padding(8)  // TODO: Увеличить только высоту на 1
    .background( // TODO: Add BG Color
      LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.13),
                                                 Color(hue: 0, saturation: 0, brightness: 0.05)]),
                     startPoint: UnitPoint(x: 0.25, y: 0),
                     endPoint: UnitPoint(x: 0.75, y: 1))
    )
    .overlay(Divider().background(.white.opacity(0.1)), alignment: .top)}
}


#Preview {
  PlayerDisplayView()
    .frame(width: 214, height: 61, alignment: .leading)
  
  // MARK: Button Design
  Image("DesignPlayerDisplay")
    .resizable()
    .frame(width: 214, height: 61, alignment: .leading)
}
