//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES

  var brand: Brand

    //MARK: - BODY
    var body: some View {
      Image(brand.image)
        .resizable()
        .scaledToFit()
        .padding()
        .background(.white)
        .clipShape(.rect(cornerRadius: 12))
        .background {
          RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
        }
    }
}

#Preview {
  BrandItemView(brand: brands[0])
    .padding()
    .background(colorBackground)
}
