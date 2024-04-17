//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 5, content: {
            
            NavigationDetailView()
                .padding(.horizontal)
                .modifier(PaddingModifier())
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
            
            VStack(alignment: .center, spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    Text(tempProducts.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                    
                }
            }// vstack
            .padding(.horizontal)
            .background(Color.white)
            
            Spacer()
        })
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: tempProducts.red, green: tempProducts.green, blue: tempProducts.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    ProductDetailView()
}
