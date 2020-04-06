//
//  DirectionViewTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
import ViewInspector
@testable import FamilyRecipes

extension DirectionView: Inspectable { }


class DirectionViewTests: XCTestCase {

    var directionView: DirectionView!

    override func setUpWithError() throws {
        let direction: DirectionViewModel =  DirectionViewModel(direction: Direction(id: UUID(), step: 1, description: "Poor milk in a pan"))
        directionView = DirectionView(direction: direction)
    }

    override func tearDownWithError() throws {
        directionView = nil
    }

    func testDirectionElementCount() throws {
        let hStackElementCount = try directionView.body.inspect().hStack().count
        XCTAssertEqual(2, hStackElementCount)
    }
}
