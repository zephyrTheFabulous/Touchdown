//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES

  var product: Product

    //MARK: - BODY
    var body: some View {
      VStack(alignment: .leading, spacing: 6) {
        // PHOTO
        ZStack {
          Image(product.image)
            .resizable()
            .scaledToFit()
            .padding(10)
        } //: ZSTACK
        .background (
          Color(red: product.red, green: product.green, blue: product.blue)
        )
        .clipShape(.rect(cornerRadius: 12))

          // NAME
        Text(product.name)
          .font(.title3)
          .fontWeight(.black)

        // PRICE
        Text(product.formattedPrice)
          .fontWeight(.semibold)
          .foregroundStyle(.gray)

      } //: VSTACK
    }
}

#Preview {
  ProductItemView(product: products[0])
    .padding()
    .background(colorBackground)
}
