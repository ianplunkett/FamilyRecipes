//
//  FileServiceTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 3/30/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
@testable import FamilyRecipes

class FileServiceTests: XCTestCase {

    let singleRecipe: String = "SingleRecipe.json"
    let badRecipe: String = "BadRecipe.json"

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoadModelFromFile() throws {
        let bundle = Bundle(for: type(of: self))
        let fileService: FileService = FileService(bundle: bundle)
        let recipe: Recipe = fileService.load(singleRecipe)
        XCTAssertTrue(type(of: recipe) == Recipe.self)
    }
}
