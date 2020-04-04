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

    let validRecipe: String = "SingleRecipe.json"
    let invalidFileName: String = "InvalidFileName.json"
    let invalidFormat: String = "InvalidFormat.json"

    var bundle: Bundle!
    var fileService: FileService!

    override func setUpWithError() throws {
        bundle = Bundle(for: type(of: self))
        fileService = FileService(bundle: self.bundle)
    }

    override func tearDownWithError() throws {
        bundle = nil
        fileService = nil
    }

    func testInvalidFileName() {
        var thrownError: Error?
        XCTAssertThrowsError(try fileService.load(invalidFileName) as Recipe) {
            thrownError = $0
        }

        XCTAssertTrue(thrownError is FileServiceError, "Error is of type \(FileServiceError.self)")

        XCTAssertEqual(thrownError as? FileServiceError, .invalidFileName)
    }

    func testFileParse() {
        var thrownError: Error?
        XCTAssertThrowsError(try fileService.load(invalidFormat) as Recipe) {
            thrownError = $0
        }

        XCTAssertTrue(thrownError is FileServiceError, "Error is of type \(FileServiceError.self)")

        XCTAssertEqual(thrownError as? FileServiceError, .fileParse)
    }

    func testLoadModelFromFile() throws {
        let recipe: Recipe = try fileService.load(validRecipe)
        XCTAssertTrue(type(of: recipe) == Recipe.self)
    }
}
