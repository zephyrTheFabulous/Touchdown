  //
  //  CategoryGridView.swift
  //  Touchdown
  //
  //  Created by Anthony on 25/10/24.
  //

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES


    //MARK: - BODY
  var body: some View {
    ScrollView(.horizontal) {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) { // sizes between rows and columns are in Constant file

        Section {
          ForEach(categories) { item in
            CategoryItemView(category: item)
          } //: LOOP
        } header: {
          SectionView(rotateClockwise: false)
        } footer: {
          SectionView(rotateClockwise: true)
        } //: SECTION

      } //: GRID
      .frame(height: 140) // limit to no more than 140
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
    } //: SCROLL

  }
}

#Preview {
  CategoryGridView()
    .padding()
    .background(colorBackground)
}
