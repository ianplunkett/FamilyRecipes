//
//  IngredientMeasurement.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/22/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//
import Foundation

struct IngredientMeasurement: Identifiable, Codable {
    let id: UUID
    let unit: Unit
    let ingredient: Ingredient
    let amount: Double
}
