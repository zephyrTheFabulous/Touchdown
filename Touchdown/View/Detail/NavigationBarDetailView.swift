//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - PROPERTIES

  @EnvironmentObject var shop: Shop

    //MARK: - BODY
    var body: some View {
      HStack {
        Button {
          feedback.impactOccurred()
          shop.selectedProduct = nil
          shop.showingProduct = false
        } label: {
          Image(systemName: "chevron.left")
            .font(.title)
            .foregroundStyle(.white)
        }

        Spacer()

        Button {

        } label: {
          Image(systemName: "cart")
            .font(.title)
            .foregroundStyle(.white)
        }


      } //: HSTACK
    }
}

#Preview {
    NavigationBarDetailView()
    .environmentObject(Shop())
    .padding()
    .background(colorBackground)
}
