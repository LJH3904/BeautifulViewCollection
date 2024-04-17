//
//  NavigationDetailView.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import SwiftUI

struct NavigationDetailView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            }
        }
        
        
        
        
    }
}

#Preview {
    NavigationDetailView()
}
