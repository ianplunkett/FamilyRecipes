//
//  RecipeListView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct RecipeListView: View {
    
    let recipes: [RecipeViewModel]
    
    init(recipes: [RecipeViewModel]) {
        self.recipes = recipes
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.recipes, id: \.id) { recipe in
                    Text(recipe.name)
                }
            }
            .navigationBarTitle("Recipes")
            .navigationBarItems(trailing: Button(action: showAddRecipeView) {
                Image(systemName: "plus")
            })
        }
    }
    
    private func showAddRecipeView() {}
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(recipes: [RecipeViewModel(recipe: Recipe(id: UUID(), name: "Spaghetti", ingredients:
            [IngredientMeasurement(id: UUID(), unit: Unit.DryVolume(.cup), ingredient: Ingredient(id: UUID(), name: "Pasta", description: "Spaghetti Pasta"), amount: 1)], directions: [Direction(id: UUID(), step: 1, description: "Boiling Pasta for 5 minutes or until done")
        ]))])
    }
}
