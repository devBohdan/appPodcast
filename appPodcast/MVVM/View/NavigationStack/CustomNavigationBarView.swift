//
//  CustomNavigationBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavigationBarView: View {
  let title: String
  var subtitle: String?

  var body: some View {
    HStack {
      HStack {
        // FIXME: [UX] Press title
        titleText(title: title)
        subtitleText(subtitle: subtitle)
      }
      Spacer()
      buttonsAction()
    }
    .font(.monoDisplay)
    .padding()
    .withScreenEffect(showBorder: false)
  }
}

#Preview {
  CustomNavigationBarView(title: "title", subtitle: "subTitle")
  Spacer()
}

extension CustomNavigationBarView {

  func titleText(title: String) -> some View {
    Button(action: { /*path.removeAll()*/ // FIXME: [CODE] router?
    }, label: {
      Text(title)
        .foregroundStyle(subtitle == nil ? Color.cDisplay : Color.cText)
        .underline(subtitle == nil)
        .textCase(.uppercase)
        .lineLimit(1)
    })
  }

  @ViewBuilder
  func subtitleText(subtitle: String?) -> some View {
    if let subtitle = subtitle {
      HStack {
        Text("/")
          .foregroundStyle(Color.cText)
        Text(subtitle)
          .foregroundStyle(Color.cDisplay)
          .underline()
      }
      .textCase(.uppercase)
      .lineLimit(1)
    }
  }

  func buttonsAction() -> some View {
    HStack {
      if subtitle != nil {
        Text("edit")
      } else {
        Text("add_filter")
        Text("|")
        Text("edit")
      }
    }
    .foregroundStyle(Color.cText)
    .textCase(.lowercase)
  }
}
