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
        VStack(alignment: .leading) {
            //TODO: add image view and clean this up
            HeaderView(imageName: recipe.imageName, recipeName: recipe.name)
            IngredientListView(ingredients: recipe.ingredients).padding(.bottom)
            DirectionListView(directions: recipe.directions)
            Spacer()
        }.frame(width: 300)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeViewModel(recipe: Recipe.all()[0]))
    }
}
