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
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        HStack {
                            Image(recipe.imageName)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(5)
                            Text(recipe.name)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Recipes"), displayMode: .large)
                //TODO: Add a Create Recipe View and link it here
            .navigationBarItems(trailing:
                Button(action: showAddRecipeView) {
                    Image(systemName: "plus")
            })
        }
    }
    
    private func showAddRecipeView() {}
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(recipes: RecipeListViewModel().recipes)
    }
}
