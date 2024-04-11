//
//  ExternalWebView.swift
//  Africa
//
//  Created by LJh on 4/11/24.
//

import SwiftUI

struct ExternalWebView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
//                    Image(systemName: "arrow.up.right.square")
//                    
                    Link(destination: URL(string: animal.link)!) {
                        Text(animal.name)
                    }
                }.foregroundColor(.accent)
            }
        }
    }
    
}
