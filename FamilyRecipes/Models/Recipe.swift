//
//  Recipe.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/22/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//
import Foundation

struct Recipe: Identifiable, Codable {
    let id: UUID
    let name: String
    let prepTime: String
    let cookTime: String
    let servings: Int
    let ingredients: [IngredientMeasurement]
    let directions: [Direction]
    let imageName: String
}
