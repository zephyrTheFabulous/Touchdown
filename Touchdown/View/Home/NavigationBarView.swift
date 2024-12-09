//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES

  @State private var isAnimated: Bool = false
  @EnvironmentObject var shop: Shop

    //MARK: - BODY
    var body: some View {
      HStack {
        Button {
          withAnimation(.easeIn) { // return to main screen via changin @Published properties
            shop.selectedProduct = nil
            shop.showingProduct = false
          }
        } label: {
          Image(systemName: "magnifyingglass")
            .font(.title)
            .foregroundStyle(.black)
        }  //: BUTTON

        Spacer()

        LogoView() // change animation to symbol only
//          .opacity(isAnimated ? 1:0)
//          .offset(x: 0, y: isAnimated ? 0:-25)
//          .onAppear {
//            withAnimation(.easeOut(duration: 0.5)) {
//              isAnimated.toggle()
//            }
//          }

        Spacer()

        Button {

        } label: {
          ZStack {
            Image(systemName: "cart")
              .font(.title)
              .foregroundStyle(.black)
            Circle()
              .fill(.red)
              .frame(width: 14, height: 14)
              .offset(x: 13, y: -10)
          }
        } //: BUTTON
      } //: HSTACK
    }
}

#Preview {
    NavigationBarView()
    .environmentObject(Shop())
}
