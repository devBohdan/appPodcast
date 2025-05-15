//
//  CustomNavBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavBarView: View {
  @Environment(\.presentationMode) var presentationMode
  let showBackBtn: Bool
  let title: String
  var subTitle: String?
  
  var body: some View {
    HStack {
      HStack {
        //TODO: Fix press title 
        titleBlock(title: title)
        subtitleBlock(subTitle: subTitle)
      }
      Spacer()
      buttonsBlock()
    }
    .font(.monoDisplay)
    .padding()
    .background(
      Color.black
        .ignoresSafeArea()
    )
    //TODO: Fix top border
    .withGlare()
  }
}

#Preview {
  CustomNavBarView(showBackBtn: true, title: "title", subTitle: "subTitle")
  Spacer()
}



extension CustomNavBarView {
  
  @ViewBuilder
  func titleBlock(title: String) -> some View {
    Button(action: {presentationMode.wrappedValue.dismiss()
    }, label: {
      Text(title)
        .foregroundStyle(subTitle == nil ? Color.cDisplay : Color.cText)
        .underline(subTitle == nil)
        .textCase(.uppercase)
    })
  }
  
  @ViewBuilder
  func subtitleBlock(subTitle: String?) -> some View {
    if let subTitle = subTitle {
      HStack() {
        Text("/")
          .foregroundStyle(Color.cText)
        Text(subTitle)
          .foregroundStyle(Color.cDisplay)
          .underline()
      }
      .textCase(.uppercase)
    }
  }
  
  func buttonsBlock() -> some View {
    HStack {
      if subTitle != nil {
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
