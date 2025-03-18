//
//  ContentView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 27.02.2025.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      
      // MARK: BG Design
      Image("CONTENT")
        .resizable()
        .edgesIgnoringSafeArea(.all)
        .scaledToFill()
// -----------------------------------------------------------------------------
      
      VStack {
        Spacer()
// -----------------------------------------------------------------------------

        // MARK: Button
        ZStack {
          Button("Play", systemImage: "play.fill") {
            
          }
          // Inside
          .labelStyle(.iconOnly)
          .padding(5)  // Padding for ICON
          .frame(minWidth: 32, minHeight: 32)
          .background(
            RoundedRectangle(
              cornerRadius: 999,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
            .strokeBorder(
              RadialGradient(gradient: Gradient(colors: [.white.opacity(0.5),
                                                         .white.opacity(0.5),
                                                         .black.opacity(0.9)]),
                             center: UnitPoint(x: 0.25, y: 0), // TODO: Сделать как констатну
                             startRadius: 0,                   // Или нет, потому что исп только тут
                             endRadius: 30),
              lineWidth: 0.5)
          )
          .shadow(color: .black.opacity(1),   radius: 22/3, x:  1, y:  2)
//          .shadow(color: .black.opacity(1),   radius: 22/999, x:  1, y:  2) // 22
//          .shadow(color: .black.opacity(1),   radius:  8/999, x: -1, y: -2) // 8
//          .shadow(color: .black.opacity(1),   radius:  8/999, x: -1, y: -2) // 8
//          .shadow(color: .white.opacity(0.2), radius: 16/999, x: -4, y: -8) // 16
//          .shadow(color: .white.opacity(0.8), radius:  8/999, x: -2, y: -4) // 8
          
          
          
          // Outside
          .padding(14)  // Padding for inside btn
          .frame(minWidth: 60, minHeight: 60)
          .background(
            RoundedRectangle(
              cornerRadius: 4,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
            .stroke(Color.green, lineWidth: 0.5)
          )
        }

// -----------------------------------------------------------------------------

        
        Button {
          
        } label: {
          ZStack(alignment: .leading) {
            Image(systemName: "play.fill")
              .font(.system(size: 16, weight: .semibold))
              .padding(5)  // Padding for ICON
              .frame(minWidth: 32, minHeight: 32)
              .overlay {
                RoundedRectangle(cornerRadius: 9999)
                  .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
                  .strokeBorder(
                    RadialGradient(gradient: Gradient(colors: [.white.opacity(0.5),
                                                               .white.opacity(0.5),
                                                               .black.opacity(0.9)]),
                                   center: UnitPoint(x: 0.25, y: 0), // TODO: Сделать как констатну
                                   startRadius: 0,                   // Или нет, потому что исп только тут
                                   endRadius: 30),
                    lineWidth: 0.5)
              }
          }
        }
// -----------------------------------------------------------------------------
      
       
        
        
        ZStack {
          Button(action: {}) {
            Image(systemName: "heart.fill")
            //Text("Aaaa")
          }
          // Inside
          .labelStyle(.iconOnly)
          .padding(5)  // Padding for ICON
          .frame(minWidth: 32, minHeight: 32)
          .background(
            RoundedRectangle(
              cornerRadius: 999,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
            .strokeBorder(
              RadialGradient(gradient: Gradient(colors: [.white.opacity(0.5),
                                                         .white.opacity(0.5),
                                                         .black.opacity(0.5)]),
                             center: UnitPoint(x: 0.25, y: 0), // TODO: Сделать как констатну
                             startRadius: 0,                   // Или нет, потому что исп только тут
                             endRadius: 20),
              lineWidth: 0.5)
          )
          .background( //0
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.black))
              .opacity(1)
              .shadow(color: .black, radius: 2, x: 1, y: 2)
//              .blur(radius: 0, opaque: false)
              .blendMode(.darken)
          )
          .background( //1
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.black))
              .opacity(1)
              .shadow(color: .black, radius: 0, x: 1, y: 2)
              .blur(radius: 22 / 2, opaque: false)
              .blendMode(.darken)
          )
          .background( //2
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.black))
              .opacity(1)
              .shadow(color: .black, radius: 2, x: 1, y: 2)
              .blur(radius: 22 / 2, opaque: false)
              .blendMode(.softLight)
          )
          .background( //3
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.black))
              .opacity(1)
              .shadow(color: .black, radius: 2, x: -1, y: -2)
              .blur(radius: 8 / 2, opaque: false)
              .blendMode(.overlay)
          )
          .background( //4
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.black))
              .opacity(1)
              .shadow(color: .black, radius: 0, x:  -1, y:  -2)
              .blur(radius: 8 / 2, opaque: false)
              .blendMode(.overlay)
          )
          .background( //5
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.white))
              .opacity(0.2)
              .shadow(color: .white, radius: 4, x: -3, y: -6)
//              .blur(radius: 2, opaque: false) //16 / 2
          )
          .background( //6
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.white))
              .opacity(0.75)
              .shadow(color: .white, radius: 4, x: -2, y: -4)
              .blur(radius: 1, opaque: false) //8 / 2
              .blendMode(.plusLighter)
          )
          
          
          
          
          
//          .background( //1
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
//              .opacity(1)
//              .shadow(color: .black, radius: 0, x: 1, y: 2)
//              .blur(radius: 22 / 2, opaque: false)
//              .blendMode(.softLight)
//          )
//          .background( //2
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
//              .opacity(1)
//              .shadow(color: .black, radius: 2, x: -1, y: -2)
//              .blur(radius: 22 / 2, opaque: false)
//              .blendMode(.softLight)
//          )
//          .background( //3
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
//              .opacity(1)
//              .shadow(color: .black, radius: 2, x: -1, y: -2)
//              .blur(radius: 8 / 2, opaque: false)
//              .blendMode(.overlay)
//          )
//          .background( //4
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
//              .opacity(1)
//              .shadow(color: .black, radius: 0, x:  1, y:  2)
//              .blur(radius: 8 / 2, opaque: false)
//              .blendMode(.overlay)
//          )
//          .background( //5
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.white))
//              .opacity(0.2)
//              .shadow(color: .white, radius: 0, x: -4, y: -8)
//              .blur(radius: 16 / 2, opaque: false)
//          )
//          .background( //6
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.white))
//              .opacity(0.8)
//              .shadow(color: .white, radius: 0, x: -2, y: -4)
//              .blur(radius: 8 / 2, opaque: false)
//          )
          
          
          
          // Outside
          .padding(14)  // Padding for inside btn
          .frame(minWidth: 60, minHeight: 60)
          .background(
            RoundedRectangle(
              cornerRadius: 4,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
            .stroke(Color.green, lineWidth: 0.5)
          )
        }
        
        Image("87")
                 .resizable()
                 .frame(width: 60, height: 60, alignment: .leading)
       
// -------
        ZStack {
          Button(action: {}) {
            //Image(systemName: "heart.fill")
            //Text("Aaaa")
          }
          // Inside
          .labelStyle(.iconOnly)
          .padding(5)  // Padding for ICON
          .frame(minWidth: 32, minHeight: 32)
          .background(
            RoundedRectangle(
              cornerRadius: 999,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
            /*.strokeBorder(
              RadialGradient(gradient: Gradient(colors: [.white.opacity(0.5),
                                                         .white.opacity(0.5),
                                                         .black.opacity(0.9)]),
                             center: UnitPoint(x: 0.25, y: 0), // TODO: Сделать как констатну
                             startRadius: 0,                   // Или нет, потому что исп только тут
                             endRadius: 30),
              lineWidth: 0.5)*/
          )
          .background( //1
            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
              .shadow(color: .black, radius: 8, x: 1, y: 2)
              .blendMode(.overlay)
              .blur(radius: 6, opaque: false)
          )
          .background( //2
            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
              .shadow(color: .black, radius: 8, x: 1, y: 2)
              .blendMode(.overlay)
              .blur(radius: 6, opaque: false)
          )
          .background( //3
            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
              .shadow(color: .black, radius: 3, x: -1, y: -2)
              .blur(radius: 2, opaque: false)
              .blendMode(.overlay)
          )
          .background( //4
            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
              .shadow(color: .black, radius: 3, x:  -1, y:  -2)
              .blur(radius: 2, opaque: false)
              .blendMode(.overlay)
          )
          .background( //5
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.white))
              .opacity(0.4)
              .shadow(color: .white, radius: 3, x: -4, y: -8)
              .blur(radius: 2, opaque: false)
          )
          .background( //6
            RoundedRectangle(cornerRadius: 999, style: .circular)
              .fill(Color(.white))
              .opacity(0.8)
              .shadow(color: .white, radius: 1, x: -1, y: -2)
//              .blur(radius: 2, opaque: false)
          )

          
          
          
          // Outside
          .padding(14)  // Padding for inside btn
          .frame(minWidth: 60, minHeight: 60)
          .background(
            RoundedRectangle(
              cornerRadius: 4,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
//            .stroke(Color.green, lineWidth: 0.5)
          )
        }
        




        
      /*
        ZStack {
          Button(action: {}) {
            //Image(systemName: "heart.fill")
            //Text("Aaaa")
          }
          // Inside
          .labelStyle(.iconOnly)
          .padding(5)  // Padding for ICON
          .frame(minWidth: 32, minHeight: 32)
          .background(
            RoundedRectangle(
              cornerRadius: 999,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
            .strokeBorder(
              RadialGradient(gradient: Gradient(colors: [.white.opacity(0.5),
                                                         .white.opacity(0.5),
                                                         .black.opacity(0.9)]),
                             center: UnitPoint(x: 0.25, y: 0), // TODO: Сделать как констатну
                             startRadius: 0,                   // Или нет, потому что исп только тут
                             endRadius: 30),
              lineWidth: 0.5)
          )
          .shadow(color: .black.opacity(1),   radius: 22/3, x:  1, y:  2)
          .blendMode(.softLight)
          .shadow(color: .black.opacity(1),   radius: 22/3, x:  1, y:  2)
          .blendMode(.softLight)
          .shadow(color: .black.opacity(1),   radius:  8/3, x: -1, y: -2)
          .blendMode(.overlay)
          .shadow(color: .black.opacity(1),   radius:  8/3, x: -1, y: -2)
          .blendMode(.overlay)
          .shadow(color: .white.opacity(0.02), radius: 16/3, x: -4, y: -8)
          .shadow(color: .white.opacity(0.8),  radius:  8/3, x: -2, y: -4)
          
          
          
//          .background( //1
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
//              .shadow(color: .black, radius: 0, x: 1, y: 2)
//              .blur(radius: 22 / 3, opaque: false)
//              .blendMode(.darken)
//          )
//          .background( //2
//            RoundedRectangle(cornerRadius: 999, style: .circular)
//              .fill(Color(.black))
//              .shadow(color: .black, radius: 0, x: 1, y: 2)
//              .blur(radius: 22 / 3, opaque: false)
//              .blendMode(.darken)
//          )
          //        .background( //3 ---
          //          RoundedRectangle(cornerRadius: 999, style: .circular)
          //            .fill(Color(.black))
          //            .opacity(1)
          //            .shadow(color: .black, radius: 2, x: -1, y: -2)
          //            .blur(radius: 8 / 3, opaque: false)
          //            .blendMode(.overlay)
          //        )
          //        .background( //4 ---
          //          RoundedRectangle(cornerRadius: 999, style: .circular)
          //            .fill(Color(.black))
          //            .opacity(1)
          //            .shadow(color: .black, radius: 2, x:  -1, y:  -2)
          //            .blur(radius: 8 / 3, opaque: false)
          //            .blendMode(.overlay)
          //        )
          //        .background( //5
          //          RoundedRectangle(cornerRadius: 999, style: .circular)
          //            .fill(Color(.white))
          //            .opacity(0.2)
          //            .shadow(color: .white, radius: 0, x: -4, y: -8)
          //            .blur(radius: 16 / 3, opaque: false)
          //        )
          //        .background( //6
          //          RoundedRectangle(cornerRadius: 999, style: .circular)
          //            .fill(Color(.white))
          //            .opacity(0.8)
          //            .shadow(color: .white, radius: 0, x: -2, y: -4)
          //            .blur(radius: 8 / 3, opaque: false)
          //        )
          
          
          
          // Outside
          .padding(14)  // Padding for inside btn
          .frame(minWidth: 60, minHeight: 60)
          .background(
            RoundedRectangle(
              cornerRadius: 4,
              style: .circular
            )
            .fill(Color(hue: 0, saturation: 0, brightness: 0.2))
            .stroke(Color.green, lineWidth: 0.5)
          )
        }
*/ // .shadow
// -----------------------------------------------------------------------------
      }
      .padding(.bottom, 65)
// -----------------------------------------------------------------------------
    }
  }
}

#Preview {
  ContentView()
}
