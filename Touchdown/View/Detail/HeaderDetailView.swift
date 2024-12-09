//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTIES

  @EnvironmentObject var shop: Shop // access to Shop class thru @EnvironmentObject

    //MARK: - BODY
    var body: some View {
      VStack(alignment: .leading, spacing: 6) {
        Text("Protective Gear")

        Text(shop.selectedProduct?.name ?? sampleProduct.name)
          .font(.largeTitle)
          .fontWeight(.black)
      }
    }
}

#Preview {
    HeaderDetailView()
    .environmentObject(Shop())
    .padding()
    .background(.gray)
}
