//
//  ProductItemView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // 사진
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                
            }.background(Color(red: product.red, green: product.green, blue: product.blue))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            // 이름
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // 가격
            Text("\(product.formattedPrice)")
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ProductItemView(product: tempProducts)
}
