//
//  ContentView.swift
//  TouchDown
//
//  Created by LJh on 4/17/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                NavigationBarVIew()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.connectedScenes
                                        .compactMap { $0 as? UIWindowScene }
                                        .first?.windows
                                        .first?.safeAreaInsets.top ?? 0)

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
                            }
                        }) // Grid
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }// scroll
                
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } // zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
}
