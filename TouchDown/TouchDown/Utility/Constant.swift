//
//  Constant.swift
//  TouchDown
//
//  Created by LJh on 4/17/24.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decode("player.json")
let categorys: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let tempProducts: Product = products[0]

// color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// API

// Image

// FOnt

// String

// Misc
