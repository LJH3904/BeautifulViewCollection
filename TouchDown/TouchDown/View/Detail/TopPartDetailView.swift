//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isANimating: Bool = false
   
    var body: some View {
        
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(tempProducts.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isANimating ? -50 : -75)
            
            Spacer()
            
            Image(tempProducts.image)
                .resizable()
                .scaledToFit()
                .offset(y: isANimating ? 0 : -35)
            
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isANimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
}
