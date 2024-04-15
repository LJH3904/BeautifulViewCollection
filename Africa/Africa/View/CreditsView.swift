//
//  CreditsView.swift
//  Africa
//
//  Created by LJh on 4/16/24.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
                
            Text("""
카피라이트다 이거다
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
        
    }
}
