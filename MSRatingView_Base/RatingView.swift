//
//  RatingView.swift
//  MSRatingView_Base
//
//  Created by Marcelo Sampaio on 02/06/22.
//

import SwiftUI

struct RatingView: View {
    var maxRating: Int
    @Binding var currentRating: Int
    var width:Int = 20
    var color: UIColor = .systemYellow
    var ratingImage: RatingImage = .star

    var body: some View {
        HStack {
            ForEach(0..<maxRating) { rating in
                correctImage(for: rating)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(color))
                    .onTapGesture {
                        self.currentRating = rating+1
                    }
            }
        }.frame(width: CGFloat(maxRating * width))
    }
    
    func correctImage(for rating: Int) -> Image {
        if rating < currentRating {
            return ratingImage.fillImage
        } else {
            return ratingImage.openImage
        }
    }

}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(maxRating: 5, currentRating: .constant(3))
            .environment(\.colorScheme, .light)
            .previewLayout(.sizeThatFits)
            .padding(10)
    }
}
