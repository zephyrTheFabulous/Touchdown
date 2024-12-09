//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES

  @EnvironmentObject var shop: Shop // access to Shop class thru @EnvironmentObject

    //MARK: - BODY
    var body: some View {
      VStack {

        Button {
          feedback.impactOccurred()
        } label: {
          Spacer()
          Text("Add to cart".uppercased())
            .font(.title2)
            .fontWeight(.bold)
            .foregroundStyle(.white)
          Spacer()
        }
        .padding()
        .background(
          Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
      }

    }
}

#Preview {
    AddToCartDetailView()
    .environmentObject(Shop())
    .padding()
}
