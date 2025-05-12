//
//  TEST_EpisodeItemView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 11.05.2025.
//


//
//  EpisodeItemView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 11.05.2025.
//

import SwiftUI

struct TEST_EpisodeItemView: View {
  var body: some View {
    
    
    HStack(alignment: .top, spacing: -10) {
      
      VStack { //-0.25
        Text("Line 1")
        Text("Line 2")
        Text("Line 3")
        Text("Line 4")
//        textSpacer
        Text("Line 5")
        Text("""
            Line 6
            Line 7
            """)
      }
      .font(.monoBody)
      .lineSpacing(0)
      .border(Color.blue).underline().foregroundStyle(Color.blue)
      
      Text("""
           Line 1
           Line 2
           Line 3
           Line 4
           Line 5
           Line 6
           Line 7
           """)
      .font(.monoBody)
      .lineSpacing(0)
      .border(Color.green).underline().foregroundStyle(Color.green)
    }
  }
  //    HStack(alignment: .top, spacing: 0) {
  //    }.font(.monoBody).multilineTextAlignment(.leading)
}



#Preview {
  TEST_EpisodeItemView()
}


extension TEST_EpisodeItemView {
  private var textSpacer: some View {
    Text("AA")
      .font(.monoBody)
      .opacity(0)
  }
}
