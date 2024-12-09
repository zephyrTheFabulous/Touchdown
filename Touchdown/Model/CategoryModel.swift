//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
