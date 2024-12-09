//
//  TitleView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES

  var title: String

    //MARK: - BODY
    var body: some View {
      HStack {
        Text(title)
          .font(.largeTitle)
          .fontWeight(.heavy)

        Spacer()

      } //: HSTACK
      .padding(.horizontal)
      .padding(.top)
      .padding(.bottom, 10)
    }
}

#Preview {
  TitleView(title: "Helmet")
//    .padding()
    .background(.gray)
}
