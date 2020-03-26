//
//  RecipesListViewModel.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

class RecipesListViewModel: ObservableObject {
    //TODO: I don't think we need this here yet. No state changes
    @Published var recipes = [RecipeViewModel]()
    
    init() {
        let recipes: [Recipe] = Recipe.all()
        self.recipes = recipes.map(RecipeViewModel.init)
    }
}

class RecipeViewModel {
    let id = UUID()

    var recipe: Recipe

    init(recipe: Recipe) {
        self.recipe = recipe
    }

    var name: String {
        return self.recipe.name
    }

    var imageName: String {
        return self.recipe.imageName
    }

    var prepTime: String {
        return "Prep Time: " + self.recipe.prepTime
    }

    var cookTime: String {
        return "Cook TIme: " + self.recipe.cookTime
    }

    var servings: String {
        return String(self.recipe.servings) + " servings"
    }
    var directions: [DirectionViewModel] {
        let directions: [Direction] = self.recipe.directions
        return directions.map(DirectionViewModel.init)
    }

    var ingredients: [IngredientViewModel] {
        let ingredients: [IngredientMeasurement] = self.recipe.ingredients
        return ingredients.map(IngredientViewModel.init)
    }
}
