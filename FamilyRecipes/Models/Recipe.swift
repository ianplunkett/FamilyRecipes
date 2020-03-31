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

extension Recipe {

    static func toJSON(recipes: [Recipe]) -> String {
        guard let jsonData = try? JSONEncoder().encode(recipes) else { return "error!" }
        guard let jsonString = String(data: jsonData, encoding: .utf8) else { return "error!" }
        return jsonString
    }

    static func all() -> [Recipe] {
        let dataService = FileService(bundle: Bundle.main)
        return dataService.load("Recipes.json")

    }

}
