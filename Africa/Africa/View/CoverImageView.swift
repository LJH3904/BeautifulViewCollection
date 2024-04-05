//
//  CoverImageView.swift
//  Africa
//
//  Created by LJh on 4/4/24.
//

import SwiftUI

struct CoverImageView: View {
    // Mark - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // Mark - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                .resizable()
            .scaledToFill()
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

// Mark - Preview
#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
