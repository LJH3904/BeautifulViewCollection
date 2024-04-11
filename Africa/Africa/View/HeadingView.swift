//
//  HeadingView.swift
//  Africa
//
//  Created by LJh on 4/11/24.
//

import SwiftUI

struct HeadingView: View {
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }.padding(.vertical)
    }
}
