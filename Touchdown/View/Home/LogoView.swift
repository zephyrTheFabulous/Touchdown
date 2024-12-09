//
//  LogoView.swift
//  Touchdown
//
//  Created by Anthony on 25/10/24.
//

import SwiftUI

struct LogoView: View {
    //MARK: - PROPERTIES

  @State private var isAnimated: Bool = false


    //MARK: - BODY
    var body: some View {
      HStack(spacing: 4) {
        Text("Touch".uppercased())
          .font(.title3)
          .fontWeight(.black)
          .foregroundStyle(.black)
        Image("logo-dark")
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .opacity(isAnimated ? 1:0)
          .offset(x: 0, y: isAnimated ? 0:-25)
          .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
              isAnimated.toggle()
            }
          }
        Text("Touch".uppercased())
          .font(.title3)
          .fontWeight(.black)
          .foregroundStyle(.black)

      } //: HSTACK
    }
}

#Preview {
    LogoView()
}
