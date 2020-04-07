//
//  DirectionViewModelTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
@testable import FamilyRecipes


class DirectionViewModelTests: XCTestCase {

    var directionViewModel: DirectionViewModel!

    override func setUpWithError() throws {
        let direction: Direction = Direction(id: UUID(), step: 1, description: "Step 1")
        directionViewModel = DirectionViewModel(direction: direction)
    }

    override func tearDownWithError() throws {
        directionViewModel = nil
    }

    func testDescription() throws {
        XCTAssertEqual("Step 1", directionViewModel.description)
    }

    func testStep() throws {
        XCTAssertEqual("Step 1.", directionViewModel.step)
    }


}
