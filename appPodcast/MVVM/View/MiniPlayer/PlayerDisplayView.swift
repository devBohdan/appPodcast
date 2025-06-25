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
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .accessibilityLabel("Correct episode cover")

      VStack(alignment: .leading) {
        Text("Why Should We Care About Privacy?")
          .lineLimit(2)
          .font(.monoBody)
          .textCase(.uppercase)
//        Text("Artist")
//          .font(.miniPlayer)
      }
      .foregroundStyle(Color.cTextAcc)

      Spacer()
    }
    .padding(9)
    .screenEffect()
  }
}

#Preview {

  PlayerDisplayView()
    .frame(width: 214)

  // MARK: Button Design
  Image("DesignPlayerDisplay")
    .resizable()
    .frame(width: 214, height: 61, alignment: .leading)
}
