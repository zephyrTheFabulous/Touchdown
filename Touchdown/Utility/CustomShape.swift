//
//  CustomShape.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import SwiftUI

// shape for background

struct CustomShape: Shape {
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))

    return Path(path.cgPath)
  }
}

#Preview {
    CustomShape()
}
