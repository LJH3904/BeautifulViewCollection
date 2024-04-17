//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("ADD to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? tempProducts.red,
                green: shop.selectedProduct?.green ??  tempProducts.green,
                blue: shop.selectedProduct?.blue ?? tempProducts.blue)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
}
