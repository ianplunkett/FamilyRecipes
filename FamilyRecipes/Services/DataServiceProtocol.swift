//
//  DataService.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 4/4/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

protocol DataServiceProtocol {
    func load<T: Decodable>(_ filename: String, as type: T.Type) throws -> T
}
