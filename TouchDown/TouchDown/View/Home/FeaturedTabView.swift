//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
          ForEach(players) { player in
            FeaturedItemView(player: player)
              .padding(.top, 10)
              .padding(.horizontal, 15)
              
              .frame(height: 300)
          }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 300)
    }
}
