//
//  HeaderViewTests.swift
//  FamilyRecipesTests
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import XCTest
import ViewInspector
@testable import FamilyRecipes

extension HeaderView: Inspectable { }

class HeaderViewTests: XCTestCase {

    var headerView: HeaderView!

    override func setUpWithError() throws {
        headerView = HeaderView(imageName: "tomatoes_peppers.jpeg")
    }

    override func tearDownWithError() throws {
        headerView = nil
    }

    func testRecipeHeaderElements() throws {
        let vStackElementCount = try headerView.body.inspect().vStack().count
        XCTAssertEqual(1, vStackElementCount)
    }

}
