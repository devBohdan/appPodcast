//
//  PodcastItemView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 30.06.2025.
//

import SwiftUI

struct PodcastItemView: View {
  let podcast: Podcast

  var body: some View {
    HStack(alignment: .top, spacing: 0) {

      Button(
        action: { },
        label: {
          AsyncImage(url: URL(string: podcast.artworkUrl100)) { image in
            image
              .resizable()
              .aspectRatio(contentMode: .fill)
          } placeholder: {
            Color.gray.opacity(0.2)
          }
          .frame(width: 100, height: 100)
          .background(Color.red)
          .accessibilityLabel("Podcast cover")
//          .background(Color.cSecBG)
        })

      textSpacer

      VStack(alignment: .leading, spacing: 0) {

        Text(podcast.collectionName)
          .lineLimit(4)
          .textCase(.uppercase)
          .foregroundStyle(Color.cTextAcc)
        textSpacer

        Text("Ep count: \(podcast.trackCount)")
          .foregroundStyle(Color.cText)

        Text("Last ep: \n\(podcast.releaseDate)")
          .foregroundStyle(Color.cText)
      }.multilineTextAlignment(.leading)
    }.font(.monoBody)
  }
}

//  #Preview {
//    PodcastItemView(podcast: podcast)
//  }

// TODO: [UI] REM EM of padding and else (Geo size?)
extension PodcastItemView {
  private var textSpacer: some View {
    Text("AA")
      .font(.monoBody)
      .opacity(0)
  }
}
