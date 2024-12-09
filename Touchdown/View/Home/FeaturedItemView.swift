//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES

  let player: Player

    //MARK: - BODY
    var body: some View {
      VStack {
        Image(player.image)
          .resizable()
          .scaledToFit()
          .clipShape(.rect(cornerRadius: 12))
      }
    }
}

#Preview {
  FeaturedItemView(player: players[0])
}
