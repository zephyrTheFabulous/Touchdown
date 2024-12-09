  //
  //  TopPartDetailView.swift
  //  Touchdown
  //
  //  Created by Anthony on 26/10/24.
  //

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTIES

  @State private var isAnimating: Bool = false
  @EnvironmentObject var shop: Shop // access to Shop class thru @EnvironmentObject

    //MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 6) {

        // PRICE
      VStackLayout(alignment: .leading, spacing: 6) {
        Text("Price")
          .fontWeight(.semibold)

        Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
          .font(.largeTitle)
          .fontWeight(.black)
          .scaleEffect(1.35, anchor: .leading)
      } //: VSTACK
      .offset(y: isAnimating ? -50 : -75)

      Spacer()

        // PHOTO
      Image(shop.selectedProduct?.image ?? sampleProduct.image)
        .resizable()
        .scaledToFit()
        .offset(y: isAnimating ? 0:-35)

    } //: HSTACK
    .onAppear {
      withAnimation(.easeOut(duration: 0.75)) {
        isAnimating.toggle()
      }
    }
  }
}

#Preview {
  TopPartDetailView()
    .environmentObject(Shop())
  .padding()
}
