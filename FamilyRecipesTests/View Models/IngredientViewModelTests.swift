//
//  IngredientViewModelTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
@testable import FamilyRecipes

class IngredientViewModelTests: XCTestCase {

    var ingredientViewModel: IngredientViewModel!

    override func setUpWithError() throws {
        let ingredient: IngredientMeasurement = IngredientMeasurement(id: UUID(), unit: Unit(id: UUID(), name: "Cup"), ingredient: Ingredient(id: UUID(), name: "Flour", description: "White Bleached Flour"), amount: 1)
        ingredientViewModel = IngredientViewModel(ingredient: ingredient)
    }

    override func tearDownWithError() throws {
        ingredientViewModel = nil
    }

    func testUnit() {
        XCTAssertEqual("Cup", ingredientViewModel.unit.name)
    }

    func testIngredientAmount() {
        XCTAssertEqual(1, ingredientViewModel.amount)
    }

    func testName() {
        XCTAssertEqual("Flour", ingredientViewModel.name)
    }

}
