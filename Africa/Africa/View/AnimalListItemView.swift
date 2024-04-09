//
//  AnimalListItemView.swift
//  Africa
//
//  Created by LJh on 4/9/24.
//

import SwiftUI

struct AnimalListItemView: View {
    let animal: Animal
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                if #available(iOS 16.0, *) {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(.accent)
                    
                    Text(animal.headline)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

#Preview {
    AnimalListItemView(animal: tempAnimal)
}
