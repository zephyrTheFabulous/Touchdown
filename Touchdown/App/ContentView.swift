//
//  ContentView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES

//  @Environment(\.safeAreaInsets) var safeAreaInsets
  @EnvironmentObject var shop: Shop // access to Shop class thru @EnvironmentObject

    //MARK: - BODY
    var body: some View {
      ZStack {
        if shop.showingProduct == false && shop.selectedProduct == nil {
          VStack(spacing: 0) {
            NavigationBarView() // custom made nav bar
              .padding(.horizontal)
              .padding(.vertical)
              //            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
              .background(.white)
              .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical) {
              VStack(spacing: 0) {
                FeaturedTabView()
                  .frame(minHeight: 256)
                  .padding(.vertical, 10)
                
                CategoryGridView()
                
                TitleView(title: "Helmets")
                
                LazyVGrid(columns: gridLayout, spacing: 16) { // why this grid is not in separate file like BrandGridView?
                  ForEach(products) { item in
                    ProductItemView(product: item)
                      .onTapGesture {
                        feedback.impactOccurred()
                        withAnimation(.easeOut) {
                          shop.selectedProduct = item
                          shop.showingProduct = true
                        }
                      }
                  } //: LOOP
                } //: GRID
                .padding()
                
                TitleView(title: "Brands")
                
                BrandGridView()
                
                FooterView()
                  .padding(.horizontal, 16)
              }
            }
            
          } //: VSTACK
          .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } else {
          ProductDetailView()
        }
      } //: ZSTACK no need for zstack
//      .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
    .environmentObject(Shop())
}


