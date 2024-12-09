  //
  //  QuantityFavoriteDetailView.swift
  //  Touchdown
  //
  //  Created by Anthony on 26/10/24.
  //

import SwiftUI

struct QuantityFavoriteDetailView: View {
    //MARK: - PROPERTIES

  @State private var counter: Int = 0

    //MARK: - BODY
  var body: some View {
    HStackLayout(alignment: .center, spacing: 6) {
      Button {
        if counter > 0 {
          feedback.impactOccurred()
          counter -= 1
        }
      } label: {
        Image(systemName: "minus.circle")
      }

      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)

      Button {
        if counter < 100 {
          feedback.impactOccurred()
          counter += 1
        }
      } label: {
        Image(systemName: "plus.circle")
      }

      Spacer()

      Button {
        feedback.impactOccurred()
      } label: {
        Image(systemName: "heart.circle")
          .foregroundStyle(.pink)
      }


    } //: HSTACK
    .font(.system(.title, design: .rounded))
    .foregroundStyle(.black)
    .imageScale(.large)
  }
}

#Preview {
  QuantityFavoriteDetailView()
    .padding()
}
