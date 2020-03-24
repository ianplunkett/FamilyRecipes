//
//  RecipeViewModel.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

class RecipeViewModel {
    let id = UUID()

    var recipe: Recipe

    init(recipe: Recipe) {
        self.recipe = recipe
    }

    var name: String {
        return self.recipe.name
    }

    var description: [Direction] {
        return self.recipe.directions
    }

    var ingredients: [IngredientMeasurement] {
        return self.recipe.ingredients
    }
}
