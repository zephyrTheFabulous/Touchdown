//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Anthony on 26/10/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    //MARK: - PROPERTIES

  let sizes: [String] = ["XS", "S", "M", "L", "XL"]

    //MARK: - BODY
    var body: some View {
      HStack(alignment: .top, spacing: 3) {
        // RATINGS
        VStackLayout(alignment: .leading, spacing: 3) {
          Text("Ratings")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundStyle(colorGray)

          HStackLayout(alignment: .center, spacing: 3) {
            ForEach(1...5, id: \.self) { item in
              Button {

              } label: {
                Image(systemName: "star.fill")
                  .frame(width: 28, height: 28)
                  .background(colorGray)
                  .clipShape(.rect(cornerRadius: 6))
                  .foregroundStyle(.white)
              }
            }
          } //: HSTACK
        } //: RATINGS

        Spacer()

        // SIZES
        VStackLayout(alignment: .trailing, spacing: 3) {
          Text("Sizes")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundStyle(colorGray)

          HStackLayout(alignment: .center, spacing: 6) {
            ForEach(sizes, id: \.self) { item in
              Button {

              } label: {
                Text(item)
                  .font(.footnote)
                  .fontWeight(.black)
                  .foregroundStyle(colorGray)
                  .frame(minWidth: 28, minHeight: 28)
                  .background(.white)
                  .clipShape(.rect(cornerRadius: 6))
                  .background(
                    RoundedRectangle(cornerRadius: 6).stroke(colorGray, lineWidth: 2)
                  )


              }

            }
          }
        } //: SIZES

      } //: MAIN HSTACK
    }
}

#Preview {
    RatingsSizesDetailView()
    .padding()
}
