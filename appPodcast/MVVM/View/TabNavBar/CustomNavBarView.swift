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
  let subTitle: String?

  
  var body: some View {
    HStack {
      Button(action: {presentationMode.wrappedValue.dismiss()
      }, label: {
        if showBackBtn {
          Text("Back")
        }
      })
      Spacer()
      HStack {
        Text(title)
        if let subTitle = subTitle {
            Text(subTitle)
        }
      }
      Spacer()
    }
    .padding()
    .accentColor(.white)
    .background(Color.orange)
  }
}

#Preview {
  CustomNavBarView(showBackBtn: true, title: "titlePrev", subTitle: "subTitlePrev")
  Spacer()
}
