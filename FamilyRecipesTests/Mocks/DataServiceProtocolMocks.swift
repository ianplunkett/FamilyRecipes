//
//  DataServiceProtocolMocks.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation
@testable import FamilyRecipes

class MockFileServiceThrows: DataServiceProtocol  {

    func load<T>(_ filename: String, as type: T.Type) throws -> T where T : Decodable {
        throw MockError.FileError
    }
}

class MockFileService: DataServiceProtocol {
    func load<T>(_ filename: String, as type: T.Type) throws -> T where T : Decodable {
        return [Recipe(id: UUID(), name: "foo", prepTime: "10 minutes", cookTime: "10 minutes", servings: 2, ingredients: [IngredientMeasurement(id: UUID(), unit: Unit(id: UUID(), name: "blank"), ingredient: Ingredient(id: UUID(), name: "foo", description: "bar"), amount: 2.0)], directions: [Direction(id: UUID(), step: 1, description: "Foo")], imageName: "tomatoes_peppers.jpeg")] as! T
    }
}

enum MockError: Error {
    case FileError
}
