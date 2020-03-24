//
//  IngredientListView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct IngredientListView: View {

    let ingredients: [IngredientViewModel]

    var body: some View {
        VStack {
            Text("Ingredients")
            ForEach(self.ingredients, id: \.id) { ingredient in
                HStack {
                    Text(String(ingredient.amount))
                    Text(ingredient.name)
                }
            }
        }
    }
}

struct IngredientListView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientListView(ingredients: [IngredientViewModel(ingredient: IngredientMeasurement(id: UUID(), unit: Unit.DryVolume(.cup), ingredient: Ingredient(id: UUID(), name: "Eggs", description: "Fresh Organic Eggs"), amount: 2))])
    }
}
