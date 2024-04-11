//
//  ContentView.swift
//  Africa
//
//  Created by LJh on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink {
                        AnimalDetailView(animal: animal)
                    } label: {
                        AnimalListItemView(animal: animal)
                    }
                }
            }
            .navigationTitle("Africa")
        }
    }
}

#Preview {
    ContentView()
}
