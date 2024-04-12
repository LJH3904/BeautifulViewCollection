//
//  GalleryView.swift
//  Africa
//
//  Created by LJh on 4/4/24.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
