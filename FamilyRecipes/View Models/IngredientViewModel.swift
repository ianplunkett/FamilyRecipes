//
//  IngredientViewModel.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

class IngredientViewModel {
    let id = UUID()

    var ingredient: IngredientMeasurement

    init(ingredient: IngredientMeasurement) {
        self.ingredient = ingredient
    }

    var unit: Unit {
        return self.ingredient.unit
    }

    var amount: Double {
        return self.ingredient.amount
    }

    var name: String {
        return self.ingredient.ingredient.name
    }
}
