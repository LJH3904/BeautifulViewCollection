//
//  CoverImageView.swift
//  Africa
//
//  Created by LJh on 4/4/24.
//

import SwiftUI

struct CoverImageView: View {
    // Mark - Properties
    
    // Mark - BODY
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
                .resizable()
            .scaledToFit()
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
