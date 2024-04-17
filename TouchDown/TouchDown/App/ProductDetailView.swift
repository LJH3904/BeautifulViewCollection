//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 5, content: {
            Text(tempProducts.name)
            Spacer()
        })
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: tempProducts.red, green: tempProducts.green, blue: tempProducts.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    ProductDetailView()
}
