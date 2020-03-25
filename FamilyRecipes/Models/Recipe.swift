//
//  Recipe.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/22/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

//TODO: Add a servings per recipe
struct Recipe: Identifiable {
    let id: UUID
    let name: String
    let ingredients: [IngredientMeasurement]
    let directions: [Direction]
    let imageName: String
    //TODO: add prep time, cook time, total time
}

extension Recipe {
    static func all() -> [Recipe] {
        //TODO: move this data to a JSON Object
        return [
            Recipe(
                id: UUID(),
                name: "Tomato and Pepper Salsa",
                ingredients: [
                    IngredientMeasurement(id: UUID(), unit: Unit.DryVolume(.cup), ingredient: Ingredient(id: UUID(), name: "Tomatoes", description: "Roma Tomatoes"), amount: 1),
                    IngredientMeasurement(id: UUID(), unit: Unit.DryVolume(.cup), ingredient: Ingredient(id: UUID(), name: "Thai Chilis", description: "Ripe Thai Chilis"), amount: 1)
                ],
                directions: [Direction(id: UUID(), step: 1, description: "Chop tomatoes into quarter inch chunks")],
                imageName: "tomatoes_peppers"
            ),
            Recipe(
                id: UUID(),
                name: "Scrambled Eggs",
                ingredients:[IngredientMeasurement(id: UUID(), unit: Unit.DryVolume(.cup), ingredient: Ingredient(id: UUID(), name: "Eggs", description: "Fresh Organic Eggs"), amount: 2)],
                directions: [Direction(id: UUID(), step: 1, description: "Scramble Eggs and fry in a pan until done")],
                imageName: "grilled_chicken_and_peppers"
            )
        ]
    }
}
