//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? tempProducts.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        })
        .foregroundStyle(.white)
    }
}
