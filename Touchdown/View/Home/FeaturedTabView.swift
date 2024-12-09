//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - PROPERTIES


    //MARK: - BODY
    var body: some View {
      TabView {
        ForEach(players) { item in
          FeaturedItemView(player: item)
            .padding(.vertical, 10)
            .padding(.horizontal)
        }
      } //: TAB
      .tabViewStyle(.page)
    }
}

#Preview {
    FeaturedTabView()
    .background(.black)
}
