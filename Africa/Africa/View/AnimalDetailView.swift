//
//  AnimalDetailView.swift
//  Africa
//
//  Created by LJh on 4/11/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
            
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "wilderness in pictures")
                    
                    InsetGalleryView(animal: animal)
                }.padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                } .padding(.horizontal)
                
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text("\(animal.description)")
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }.padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                }.padding(.horizontal)
                
            }
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    AnimalDetailView(animal: tempAnimal)
}
