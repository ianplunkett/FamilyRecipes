//
//  DirectionListViewTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
import ViewInspector
@testable import FamilyRecipes

extension DirectionListView: Inspectable { }


class DirectionListViewTests: XCTestCase {

    var directionListView: DirectionListView!

    override func setUpWithError() throws {
        let directionViewModel: DirectionViewModel = DirectionViewModel(direction: Direction(id: UUID(), step: 1, description: "Stir the pot"))
        directionListView = DirectionListView(directions: [directionViewModel])
    }

    override func tearDownWithError() throws {
        directionListView = nil
    }

    func testExample() throws {
        let vStackElementCount = try directionListView.body.inspect().vStack().count

        XCTAssertEqual(2, vStackElementCount)
    }
}
