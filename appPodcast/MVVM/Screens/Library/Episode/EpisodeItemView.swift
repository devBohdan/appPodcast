//
//  EpisodeItemView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 11.05.2025.
//

import SwiftUI

struct EpisodeItemView: View {

  var episode: EpisodeSample

  var body: some View {
    HStack(alignment: .top, spacing: 0) {

      Button(
        action: { },
        label: {
          VStack(alignment: .leading, spacing: 0) {
            Image(episode.imageURL) // episode.imageURL
              .resizable()
              .frame(width: 100, height: 100)
              .background(Color.red)
              .accessibilityLabel("Episode cover")

            VStack(alignment: .leading, spacing: 0) {
              Text("Play").foregroundStyle(Color.cTextAcc)
              Text("\(episode.duration) left").foregroundStyle(Color.cText)
            }
            .padding(.horizontal, 2)
            .padding(.vertical, 1)
          }
          .background(Color.cSecBG)
        })

      textSpacer

      VStack(alignment: .leading, spacing: 0) {

        Text(episode.title)
          .lineLimit(2)
          .textCase(.uppercase)
          .foregroundStyle(Color.cTextAcc)
        textSpacer

        Text(episode.description)
          .lineLimit(4)
          .foregroundStyle(Color.cText)
        textSpacer

        HStack { Text(episode.data); Spacer(); Text("[DL] [AR] [Q]") }
          .foregroundStyle(Color.cDisable)
      }.multilineTextAlignment(.leading)
    }.font(.monoBody)
  }
}

#Preview {
  EpisodeItemView(episode: EpisodeSample.sample)
}

// TODO: [UI] REM EM of padding and else (Geo size?)
extension EpisodeItemView {
  private var textSpacer: some View {
    Text("AA")
      .font(.monoBody)
      .opacity(0)
  }
}
