//
//  EpListView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 23.03.2025.
//

import SwiftUI
  
struct EpListView: View {
  var body: some View {
    // MARK: Ep List
    VStack(alignment: .leading, spacing: 8) {
      HStack(spacing: 8) {
        Image("Podcast")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 44, height: 44)
          .background(Color(.gray))
          .clipShape(.rect(cornerRadius: 5))
        Text("How To Achieve Financial & Location How To Achie How To")
          .lineLimit(2)
          .font(.system(.body, design: .monospaced, weight: .bold))
          .foregroundStyle(.white.opacity(0.9))
      }
      Text("12 apr, 2019 • Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia")
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

        HStack(spacing: 8) {
          Text("50 min left")
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
  EpListView()
  
  // MARK: Button Design
  Image("EpListView")
    .resizable()
    .frame(width: 402, height: 162, alignment: .leading)
}
