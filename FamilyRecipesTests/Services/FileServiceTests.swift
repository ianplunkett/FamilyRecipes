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
    var bundle: Bundle!
    var fileService: FileService!

    override func setUpWithError() throws {
        bundle = Bundle(for: type(of: self))
        fileService = FileService(bundle: self.bundle)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
/*
    func testBadFileName() {
        let fileService:
        XCTAssertThrowsError(<#T##expression: T##T#>)
    }
*/

    func testLoadModelFromFile() throws {
        let recipe: Recipe = fileService.load(singleRecipe)
        XCTAssertTrue(type(of: recipe) == Recipe.self)
    }
}
