//
//  CustomTabView.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 07.04.2025.
//

import SwiftUI

//struct CustomTabViewStyle: TabViewStyle {
//  static func _makeView<SelectionValue>(value: _GraphValue<_TabViewValue<CustomTabViewStyle, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable {
//    <#code#>
//  }
//  
//  static func _makeViewList<SelectionValue>(value: _GraphValue<_TabViewValue<CustomTabViewStyle, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable {
//    <#code#>
//  }
//}


struct CustomTabView: View {
  var body: some View {
    TabView {
      Text("0")
        .tabItem {
          Label("Menu", systemImage: "list.dash")
        }
      
      Text("2")
        .tabItem {
          ButtonTabView(label:"LIBRARY")
        }
    }
    .tabViewStyle(.page)
    .ignoresSafeArea()
  }
}


#Preview {
    CustomTabView()
}
