//
//  SwiftUIView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 26.04.2025.
//

import SwiftUI

struct NavBarView: View {
  var body: some View {
    CustomNavView {
      ZStack {
        Color.brown
        NavigationLink(
          destination:
            Text("destination")
            .navigationTitle("navigationTitle 2")
            .navigationBarBackButtonHidden(false),
          label: {
            Text("Nav")
          }
        )
      }.navigationTitle("navigationTitle")
    }
    
  }
}

#Preview {
  NavBarView()
}

extension NavBarView {
  private var defNavView: some View {
    NavigationView {
      ZStack {
        Color.green.ignoresSafeArea()
        
        NavigationLink(
          destination:
            Text("destination")
            .navigationTitle("navigationTitle 2")
            .navigationBarBackButtonHidden(false),
          label: {
            Text("Nav")
          }
        )
      }.navigationTitle("navigationTitle")
    }
  }
}
