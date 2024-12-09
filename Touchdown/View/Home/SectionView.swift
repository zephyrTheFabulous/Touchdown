//
//  SectionView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES

  @State var rotateClockwise: Bool 

    //MARK: - BODY
    var body: some View {
      VStack(spacing:0) {
        Spacer()

        Text("Categories".uppercased())
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundStyle(.white)
          .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))

        Spacer()
      } //: VSTACK
      .background(.gray)
      .clipShape(.rect(cornerRadius: 12))
      .frame(width: 85)

    }
}

#Preview {
  SectionView(rotateClockwise: false)
    .padding()
    .background(colorBackground)
}
