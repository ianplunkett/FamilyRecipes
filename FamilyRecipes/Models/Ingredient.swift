
//
//  Ingredient.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/22/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//
import Foundation

struct Ingredient: Identifiable, Codable {
    let id: UUID
    let name: String
    let description: String
}
