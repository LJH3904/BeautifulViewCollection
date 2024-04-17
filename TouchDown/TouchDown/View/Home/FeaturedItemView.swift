//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
