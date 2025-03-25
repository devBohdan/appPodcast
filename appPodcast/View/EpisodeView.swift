//
//  EpisodeView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 23.03.2025.
//

import SwiftUI
  
struct EpisodeView: View {
  var episode: Episode
  
  var body: some View {
    // MARK: Ep List
    VStack(alignment: .leading, spacing: 8) {
      HStack(spacing: 8) {
        Image(episode.imageURL)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 44, height: 44)
          .background(Color(.gray))
          .clipShape(RoundedRectangle(cornerRadius: 5))
        Text(episode.title)
          .lineLimit(2)
          .font(.system(.body, design: .monospaced, weight: .bold))
          .foregroundStyle(.white.opacity(0.9))
      }
      Text("\(episode.data) • \(episode.description)")
        .lineLimit(3)
        .font(.system(.caption, design: .monospaced, weight: .light))
        .foregroundStyle(.white.opacity(0.9))
      
      HStack {
        HStack(spacing: 16) {
          Image(systemName:"play.circle")
            .resizable()
            .frame(width: 32, height: 32)
            .foregroundStyle(.white)
          Image(systemName:"play.circle")
            .resizable()
            .frame(width: 32, height: 32)
            .foregroundStyle(.white)
          Image(systemName:"play.circle")
            .resizable()
            .frame(width: 32, height: 32)
            .foregroundStyle(.white)
        }

        Spacer()

        HStack(spacing: 16) {
          Text("\(episode.duration) left")
            .font(.system(.caption, design: .monospaced, weight: .light))
            .foregroundStyle(.white.opacity(0.9))
          Image(systemName:"play.circle")
            .resizable()
            .frame(width: 32, height: 32)
            .foregroundStyle(.white)
        }
      }
    }
    .padding(16)
    .overlay(
      Rectangle()
        .frame(height: 1)
        .foregroundStyle(.white),
      alignment: .bottom
    )
  }
}


#Preview {
  EpisodeView(episode: Episode.sample)
  
  // MARK: Button Design
  Image("EpListView")
    .resizable()
    .frame(width: 402, height: 162, alignment: .leading)
}
