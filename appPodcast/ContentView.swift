//
//  ContentView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.02.2025.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Spacer()
      VStack(spacing: 1) {
        //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        ZStack {
          ScrollView {
            VStack(spacing: 0){
              EpListView()
              EpListView()
              EpListView()
              EpListView()
              EpListView()
              EpListView()
              EpListView() //7
            }
          }
          
          Rectangle()
            .border(.black.opacity(0.25), width: 1)
          
          // TODO: Add BG Color, and this set as forground ZStack
            .foregroundStyle(
              LinearGradient(gradient: Gradient(colors: [Color(hue: 0, saturation: 0, brightness: 0.1*10),
                                                         Color(hue: 0, saturation: 0, brightness: 0.05*10)]),
                             startPoint: UnitPoint(x: 0.25, y: 0),
                             endPoint: UnitPoint(x: 0.75, y: 1)).opacity(0.1)
            )
            .overlay(
              Rectangle()
                .frame(height: 0.5)
                .foregroundStyle(Color(hue: 0, saturation: 0, brightness: 0.4)),
              alignment: .top
            )
            .allowsHitTesting(false)
        }

        
        //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        VStack(spacing: 2) {
          VStack(spacing: 1) {
            // MARK: Mini Progres Bar
            PlayerProgressBar()
            HStack(alignment: .center, spacing: 2) {  // TODO: alignment: .bottom?
              // MARK: Mini Screen
              PlayerDisplayView()
              // MARK: Mini Buttons
              PlayerButtonView()
              PlayerButtonView()
              PlayerButtonView()
                .padding(.trailing, 2)
            }
          }
          HStack(spacing: 2) {
            ButtonTabView()
            ButtonTabView()
            ButtonTabView()
            ButtonTabView()
          }
        }
      }
    }
    .background(Color.black)
  }
}

#Preview {
  ContentView()
}


