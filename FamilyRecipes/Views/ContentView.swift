//
//  ContentView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/22/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var recipeListVM = RecipesListViewModel()
    
    var body: some View {
        RecipeListView(recipes: self.recipeListVM.recipes)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
