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

    @State private var showModal: Bool = false
    
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
                            .frame(width: 65, height: 65)
                    }
                    .background(Color.yellow)
            )

                .sheet(isPresented: self.$showModal) {
                    AddRecipeView(isPresented: self.$showModal)
            }
        }
    }
    
    private func showAddRecipeView() {
        print("click click")
        self.showModal = true
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(recipes: RecipeListViewModel().recipes)
    }
}
