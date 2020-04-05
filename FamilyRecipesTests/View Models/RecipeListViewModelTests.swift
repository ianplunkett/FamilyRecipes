//
//  RecipeListViewModelTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/4/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
@testable import FamilyRecipes


class RecipeListViewModelTests: XCTestCase {

    var recipeListViewModel: RecipeListViewModel!

    override func setUpWithError() throws {
        recipeListViewModel = RecipeListViewModel(recipeService: MockFileService())
    }

    override func tearDownWithError() throws {
        recipeListViewModel = nil
    }

    func testErrorThrownFromService() {
        recipeListViewModel = RecipeListViewModel(recipeService: MockFileServiceThrows())
        XCTAssertEqual(0, recipeListViewModel.recipes.count)
    }

    func testPrepTimeString() {
        let recipeViewModel = recipeListViewModel.recipes[0]
        XCTAssertEqual("Prep Time: 10 minutes", recipeViewModel.prepTime)
    }

    func testCookTimeString() {
        let recipeViewModel = recipeListViewModel.recipes[0]
        XCTAssertEqual("Cook Time: 10 minutes", recipeViewModel.cookTime)
    }

    func testServingsString() {
        let recipeViewModel = recipeListViewModel.recipes[0]
        XCTAssertEqual("2 servings", recipeViewModel.servings)
    }

    func testDirectionsCount() {
        let recipeViewModel = recipeListViewModel.recipes[0]
        XCTAssertEqual(1, recipeViewModel.directions.count)
    }

    func testIngredientsCount() {
        let recipeViewModel = recipeListViewModel.recipes[0]
        XCTAssertEqual(1, recipeViewModel.ingredients.count)
    }
}

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
