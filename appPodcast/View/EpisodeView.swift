//
//  EpisodeView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 23.03.2025.
//

import SwiftUI

struct EpisodeView: View {
  var episode: Episode

  private func textLabel(_ text: String,_ fontStyle: Font.TextStyle = .body, lines: Int? = nil) -> some View {
    Text(text)
      .font(.system(fontStyle, design: .monospaced))  // TODO: My own styles?
      .foregroundStyle(.white.opacity(0.9))
      .lineLimit(lines)
  }
  
  // TODO: Custom settings?
  private var epImage: some View {
    Image(episode.imageURL)
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: 44, height: 44)
      .background(Color(.gray))
      .clipShape(RoundedRectangle(cornerRadius: 5))
  }
  
  private func epStatusIcon(_ icon: String) -> some View {
    Image(systemName:icon)
      .resizable()
      .frame(width: 32, height: 32)
      .foregroundStyle(.white)
  }
  
  
    
  var body: some View {
    // MARK: Ep List
    VStack(alignment: .leading, spacing: 8) {
      HStack(spacing: 8) {
        epImage
        textLabel(episode.title, .headline, lines: 2)
      }
      textLabel("\(episode.data) • \(episode.description)", .caption, lines: 3)
      HStack {
        HStack(spacing: 16) {
          epStatusIcon("play.circle")
          epStatusIcon("play.circle")
          epStatusIcon("play.circle")
        }
        Spacer()
        HStack(spacing: 16) {
          textLabel("\(episode.duration) left", .caption)
          epStatusIcon("play.circle") // TODO: Button
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
