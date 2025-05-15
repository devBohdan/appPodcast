//
//  CustomTabBtnView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 07.04.2025.
//

import SwiftUI

struct CustomTabBtnView: View {
  let tabs: [TabBarItem]
  @Binding var currentTab: TabBarItem
  
  var body : some View {
    HStack(spacing: 2) {
      ForEach(tabs, id: \.self) { tab in
        tabView(tab: tab)
      }
    }
  }
}

extension CustomTabBtnView {
  private func tabView(tab: TabBarItem) -> some View {
    Button(action: {currentTab = tab}) {
      HStack {
        Spacer()
        Text(tab.title)
        Spacer()
      }
    }
    // Font
    .font(.monoDisplay)
    // TODO: Более разный вид
    .foregroundStyle(currentTab == tab ? Color.cDisplay.opacity(0.9) : Color.cDisable.opacity(0.9))
    
    // Size
    .frame(height: 44, alignment: .bottom)
    .offset(y: -5)
    .background(
      Rectangle()
      // Color
        .fill(
          LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.1),
                                                     Color(hue: 0, saturation: 0, brightness: 0.4),
                                                     Color(hue: 0, saturation: 0, brightness: 0.2)]),
                         startPoint: .top,
                         endPoint: UnitPoint(x: 0.5, y: 0.12))
        )
        .overlay(
          ZStack(alignment: .topLeading) {
            // Glare
            Rectangle()
              .frame(height: 1)
              .overlay(
                LinearGradient(gradient: Gradient(
                  colors: [Color(hue: 0, saturation: 0, brightness: 0.4),
                           Color(hue: 0, saturation: 0, brightness: 0.5),
                           Color(hue: 0, saturation: 0, brightness: 0.4)]
                ),
                               startPoint: .leading,
                               endPoint: UnitPoint(x: 0.7, y: 0.5))
              )
              .offset(y: 4)
            
            // Left Border
            Rectangle()
              .frame(width: 1)
              .foregroundColor(Color(hue: 0, saturation: 0, brightness: 0.3))
              .clipped()
            
            // Noise
            Image("Noize")
              .resizable(resizingMode: .tile)
              .opacity(0.5)
          }
        ).ignoresSafeArea(edges: .bottom)
    )
  }
}


#Preview {
  Spacer()
  
  let tabs: [TabBarItem] = [.downloads, .library, .profile, .search]
  
  CustomTabBtnView(tabs: tabs, currentTab: .constant(tabs.first!))
}
//  // MARK: ButtonTabView Design
//  HStack(spacing: 2) {
//    Image("Tab")
//      .resizable()
//      .frame(width: 99, height: 62, alignment: .leading)
//    Image("Tab")
//      .resizable()
//      .frame(width: 99, height: 62, alignment: .leading)
//    Image("Tab")
//      .resizable()
//      .frame(width: 99, height: 62, alignment: .leading)
//    Image("Tab")
//      .resizable()
//      .frame(width: 99, height: 62, alignment: .leading)
//  }
