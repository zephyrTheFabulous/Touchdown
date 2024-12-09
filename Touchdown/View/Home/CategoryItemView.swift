//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPERTIES

  let category: Category

    //MARK: - BODY
    var body: some View {
      Button {

      } label: {
        HStack(spacing: 6) {
          Image(category.image)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30, alignment: .center)
            .foregroundStyle(.gray)
          Text(category.name.uppercased())
            .fontWeight(.light)
            .foregroundStyle(.gray)

          Spacer()
        } //: HSTACK
        .padding()
        .background(.white)
        .clipShape(.rect(cornerRadius: 12))
        .background(
          RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
        )
      } //: BUTTON

    }
}

#Preview {
  CategoryItemView(category: categories[0])
    .padding()
    .background(colorBackground)
}
