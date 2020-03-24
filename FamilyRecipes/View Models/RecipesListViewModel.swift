//
//  RecipesListViewModel.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

class RecipesListViewModel: ObservableObject {
    @Published var recipes = [RecipeViewModel]()
    
    
    init() {
        let recipes: [Recipe] = [
            Recipe(id: UUID(), name: "Spaghetti", ingredients:
                [IngredientMeasurement(id: UUID(), unit: Unit.DryVolume(.cup), ingredient: Ingredient(id: UUID(), name: "Pasta", description: "Spaghetti Pasta"), amount: 1)], directions: [Direction(id: UUID(), step: 1, description: "Boiling Pasta for 5 minutes or until done")
            ]),
            Recipe(id: UUID(), name: "Scrambled Eggs", ingredients:
                [IngredientMeasurement(id: UUID(), unit: Unit.DryVolume(.cup), ingredient: Ingredient(id: UUID(), name: "Eggs", description: "Fresh Organic Eggs"), amount: 2)], directions: [Direction(id: UUID(), step: 1, description: "Scramble Eggs and fry in a pan until done")
            ])
        ]
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
}
