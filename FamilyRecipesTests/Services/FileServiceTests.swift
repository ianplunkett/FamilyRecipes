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

    func testBadFileName() {
        var thrownError: Error?
        XCTAssertThrowsError(try fileService.load(badRecipe) as Recipe) {
            thrownError = $0
        }

        XCTAssertTrue(thrownError is FileServiceError, "Error is of type \(FileServiceError.self)")

        XCTAssertEqual(thrownError as? FileServiceError, .invalidFileName)
    }

    func testLoadModelFromFile() throws {
        let recipe: Recipe = try fileService.load(singleRecipe)
        XCTAssertTrue(type(of: recipe) == Recipe.self)
    }
}
