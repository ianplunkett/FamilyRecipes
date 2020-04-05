//
//  CircleImageView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/24/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var imageName: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 200)
                .cornerRadius(7)
        }.padding(.top)
    }
}

struct HeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(imageName: "tomatoes_peppers")
    }
}
