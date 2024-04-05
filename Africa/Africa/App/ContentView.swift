//
//  ContentView.swift
//  Africa
//
//  Created by LJh on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationTitle("Africa")
        }
    }
}

#Preview {
    ContentView()
}
