//
//  InsetFactView.swift
//  Africa
//
//  Created by LJh on 4/11/24.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    var body: some View {
        
        Group {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text("\(fact)")
                }
                
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
        
    }
}
