//
//  MainView.swift
//  MSRatingView_Base
//
//  Created by Marcelo Sampaio on 02/06/22.
//

import SwiftUI

struct MainView: View {
    @State var currentRating = 0
    var body: some View {
        VStack {

            RatingView(maxRating: 5,
                       currentRating: $currentRating,
                       width: 60,
                       color: .orange,
                       ratingImage: .star)

            if currentRating == 0 {
                Text("Please, give us your feedback.")
            }else if currentRating == 1 {
                Text("😡 verified \(currentRating)")
            }else if currentRating == 2 {
                Text("🥺 verified \(currentRating)")
            }else if currentRating == 3 {
                Text("😤 verified \(currentRating)")
            }else if currentRating == 4 {
                Text("🙂 verified \(currentRating)")
            }else{
                Text("🥰 verified \(currentRating)")
            }

        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
