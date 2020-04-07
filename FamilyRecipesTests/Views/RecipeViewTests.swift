//
//  RecipeViewTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
import ViewInspector
@testable import FamilyRecipes

extension RecipeView: Inspectable { }


class RecipeViewTests: XCTestCase {

    var recipeView: RecipeView!

    override func setUpWithError() throws {
        let recipes: [Recipe] = try MockFileService().load("foo", as: [Recipe].self)
        recipeView = RecipeView(recipe: RecipeViewModel(recipe: recipes[0]))
    }

    override func tearDownWithError() throws {
        recipeView = nil
    }

    func testRecipeElements() throws {
        let vStackElementCount = try recipeView.body.inspect().scrollView().vStack().count

        XCTAssertEqual(7, vStackElementCount)
    }
}
