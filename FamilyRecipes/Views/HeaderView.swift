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
    var recipeName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(recipeName)
                .font(.largeTitle)
                .fixedSize(horizontal: false, vertical: true)
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 200)
                .cornerRadius(7)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(imageName: "tomatoes_peppers", recipeName: "Tomato and Pepper Salsa")
    }
}
