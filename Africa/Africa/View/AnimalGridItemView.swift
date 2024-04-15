//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by LJh on 4/15/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}
