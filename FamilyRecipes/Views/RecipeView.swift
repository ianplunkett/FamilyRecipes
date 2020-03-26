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
        ScrollView {
            VStack(alignment: .leading) {
                HeaderView(imageName: recipe.imageName, recipeName: recipe.name)
                Text(recipe.prepTime)
                    .fontWeight(.bold)
                Text(recipe.cookTime)
                    .fontWeight(.bold)
                Text(recipe.servings)
                    .fontWeight(.semibold)
                    .padding(.bottom)
                IngredientListView(ingredients: recipe.ingredients).padding(.bottom)
                DirectionListView(directions: recipe.directions)
                Spacer()
            }.frame(width: 300)
        }.navigationBarTitle(Text(recipe.name), displayMode: .inline)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeViewModel(recipe: Recipe.all()[0]))
    }
}
