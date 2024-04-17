//
//  BrandItemView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    var body: some View {
        
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
            )
        
    }
}
