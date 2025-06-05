//
//  MiniPlayerView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 05.05.2025.
//

import SwiftUI

struct MiniPlayerView: View {
  var body: some View {
    VStack(spacing: 1) {

      PlayerProgressBarView()

      HStack(alignment: .bottom, spacing: 3) {

        PlayerDisplayView()

        PlayerButtonView()
        PlayerButtonView()
        PlayerButtonView()
          .padding(.trailing, 3)
      }
    }
  }
}

#Preview {
    MiniPlayerView()
}
