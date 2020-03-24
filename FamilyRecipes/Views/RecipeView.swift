//
//  RecipeView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/22/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct RecipeView: View {

    let recipe: RecipeViewModel

    var body: some View {
        VStack {
            Text(recipe.name)
        }.navigationBarTitle(recipe.name)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeViewModel(recipe: Recipe.all()[0]))
    }
}
