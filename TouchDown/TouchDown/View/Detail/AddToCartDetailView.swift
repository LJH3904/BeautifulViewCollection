//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button {
            
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
            Color(red: tempProducts.red, green: tempProducts.green, blue: tempProducts.blue)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
}
