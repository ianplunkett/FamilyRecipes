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
        let recipes: [Recipe] = Recipe.all()
        self.recipes = recipes.map(RecipeViewModel.init)
    }
}

