//
//  BrandGridView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(20)
        }
    }
}

#Preview {
    BrandGridView()
}
