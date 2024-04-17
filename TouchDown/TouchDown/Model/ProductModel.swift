//
//  ProductModel.swift
//  TouchDown
//
//  Created by LJh on 4/18/24.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[1] }
    
    var formattedPrice: String { return "$\(price)" }
}
