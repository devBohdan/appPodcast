//
//  CustomNavBarView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 02.05.2025.
//

import SwiftUI

struct CustomNavBarView: View {
  @State private var title: String = "Title"
  @State private var subTitle: String? = "| SubTitle"

  
  var body: some View {
    HStack {
      Button(action: {},
             label: {
        Text("Back")
      })
      Spacer()
      HStack {
        Text(title)
        Text(subTitle!)
      }
      Spacer()
    }
    .padding()
    .accentColor(.white)
    .background(Color.orange)
  }
}

#Preview {
  CustomNavBarView()
  Spacer()
}
