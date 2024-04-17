//
//  ContentView.swift
//  TouchDown
//
//  Created by LJh on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
   
    var body: some View {
        ZStack {
            if shop.shopwingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 10) {
                    NavigationBarVIew()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .modifier(PaddingModifier())
                    
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.shopwingProduct = true
                                            }
                                        }
                                }
                            }) // Grid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }// scroll
                    
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
                
            }
        } // zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
}
