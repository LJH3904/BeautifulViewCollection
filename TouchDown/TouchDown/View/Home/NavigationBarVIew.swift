//
//  NavigationBarVIew.swift
//  TouchDown
//
//  Created by LJh on 4/17/24.
//

import SwiftUI

struct NavigationBarVIew: View {
    @State private var isANimated: Bool = false
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isANimated ? 1 : 0)
                .offset(x: 0, y: isANimated ? 0 : -25)
                .onAppear() {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isANimated.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundStyle(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x:13, y: -10)
                    
                }
            }

        }
    }
}
