//
//  IngredientListViewTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
import ViewInspector
@testable import FamilyRecipes

extension IngredientListView: Inspectable { }

class IngredientListViewTests: XCTestCase {

    var ingredientListView: IngredientListView!

    override func setUpWithError() throws {
        let ingredientViewModel: IngredientViewModel = IngredientViewModel(ingredient: IngredientMeasurement(id: UUID(), unit: Unit(id: UUID(), name: "Cup"), ingredient: Ingredient(id: UUID(), name: "Jalapeno", description: "Jalapeno Chili"), amount: 3))
        ingredientListView = IngredientListView(ingredients: [ingredientViewModel])
    }

    override func tearDownWithError() throws {
        ingredientListView = nil
    }

    func testElementCounts() throws {
        let vStackElementCount = try ingredientListView.body.inspect().vStack().count
        let hStackElementCount = try ingredientListView.body.inspect().vStack().forEach(1).hStack(0).count

        XCTAssertEqual(2, vStackElementCount)
        XCTAssertEqual(2, hStackElementCount)
    }
}
