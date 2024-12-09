//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES


    //MARK: - BODY
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
          ForEach(brands) { item in
            BrandItemView(brand: item)
          }
        } //: GRID
        .frame(height: 200)
        .padding()
      } //: SCROLL
    }
}

#Preview {
    BrandGridView()
    .background(colorBackground)
}
