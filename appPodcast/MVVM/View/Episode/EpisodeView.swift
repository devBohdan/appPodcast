//
//  EpisodeView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 23.03.2025.
//

import SwiftUI



struct EpisodeView: View {
  var episode: Episode
  
  // TODO: Custom settings?
  private var epImage: some View {
    Image(episode.imageURL)
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: 44, height: 44)
      .background(Color(.gray))
      .clipShape(RoundedRectangle(cornerRadius: 5))
  }
  
  
  // MARK: Episode View
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      HStack(spacing: 8) {
        epImage
        TextLabel(text: episode.title, font: .displayTitle, lines: 2)
      }
      TextLabel(text: "\(episode.data) • \(episode.description)", font: .displayBody, lines: 3)
      HStack {
        HStack(spacing: 16) {
          EpStatus(icon:"play.circle")
          EpStatus(icon:"play.circle")
          EpStatus(icon:"play.circle")
        }
        Spacer()
        HStack(spacing: 16) {
          TextLabel(text: "\(episode.duration) left", font: .caption)
          EpStatus(icon:"play.circle") // TODO: Button
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


// MARK: Views
struct TextLabel: View { // TODO: DELETE
  var text: String
  var font: Font = .displayBody
  var lines: Int? = nil
  
  var body: some View {
    Text(text)
      .font(font)
      .foregroundStyle(.white.opacity(0.9))
      .lineLimit(lines)
  }
}

struct EpStatus: View {
  var icon: String
  
  var body : some View {
    Image(systemName:icon)
      .resizable()
      .frame(width: 32, height: 32)
      .foregroundStyle(.white)
  }
}



#Preview {
  EpisodeView(episode: Episode.sample)
  
  // MARK: Deisgn
  Image("EpListView")
    .resizable()
    .frame(width: 402, height: 162, alignment: .leading)
}
