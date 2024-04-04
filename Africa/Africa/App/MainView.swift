//
//  MainView.swift
//  Africa
//
//  Created by LJh on 4/4/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                        Text("Browse")
                }
            
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Video")
                }
        }
    }
}

#Preview {
    MainView()
}
