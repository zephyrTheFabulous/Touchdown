//
//  FooterView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct FooterView: View {
    //MARK: - PROPERTIES



    //MARK: - BODY
    var body: some View {
      VStack(alignment: .center, spacing: 10) {
        Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
          .foregroundStyle(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(2)
        Image("logo-lineal")
          .renderingMode(.template)
          .foregroundStyle(.gray)
          .layoutPriority(0)
        Text("Copyright © Efimov Anton \nAll right reserved")
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundStyle(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(1)
      } //: VSTACK
      .padding()
    }
}

#Preview {
    FooterView()
}
