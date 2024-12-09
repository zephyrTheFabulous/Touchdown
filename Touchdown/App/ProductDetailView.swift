  //
  //  ProductDetailView.swift
  //  Touchdown
  //
  //  Created by Anthony on 26/10/24.
  //

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTIES
  
  @EnvironmentObject var shop: Shop // access to Shop class through @EnvironmentObject
  
    //MARK: - BODY
  
  var body: some View {
    VStack(alignment: .leading, spacing: 6) {
      
        // NAV BAR
      NavigationBarDetailView()
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
      
        // HEADER
      HeaderDetailView()
        .padding(.horizontal, 16)
      
        // DETAIL TOP
      TopPartDetailView()
        .padding(.horizontal, 16)
        .zIndex(1)
      
        // DETAIL BOTTOM
      VStackLayout(alignment: .center, spacing: 0) {
        
          // RATINGS + SIZES
        RatingsSizesDetailView()
          .padding(.top, -25)
          .padding(.bottom, 16)
        
          // DESCRIPTION
        ScrollView(.vertical) {
          Text(shop.selectedProduct?.description ?? sampleProduct.description)
            .font(.system(.callout, design: .rounded))
            .foregroundStyle(.gray)
            .multilineTextAlignment(.leading)
        } //: SCROLL
        
          // QUANTITY + FAVORITE
        QuantityFavoriteDetailView()
          .padding(.vertical, 10)
        
          // ADD TO CART
        AddToCartDetailView()
          .padding(.bottom, 20)
        
          //        Spacer()
      } //: VSTACK
      .padding(.horizontal, 16)
      .background(Color.white
        .clipShape(CustomShape())
        .padding(.top, -105)
      )
    } //: VSTACK
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .bottom)
    .background(
      Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        .ignoresSafeArea()
    )
  }
}

#Preview {
  ProductDetailView()
    .environmentObject(Shop())
}
