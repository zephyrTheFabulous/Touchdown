//
//  Constant.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

// file
import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]


// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10 // horizontal spacing in vertical grid, vertical space in horizontal grid
var gridLayout: [GridItem] {
  return Array(
    repeating: GridItem(.flexible(), spacing: rowSpacing),
    count: 2)
}

// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

// API

// IMAGE

// FONT

// STRING

// MISC
