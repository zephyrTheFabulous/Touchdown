//
//  Shop.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil // default value
}
