//
//  DirectionListViewModel.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

class DirectionViewModel {
    let id = UUID()
    
    var direction: Direction
    
    init(direction: Direction) {
        self.direction = direction
    }
    
    var step: String {
        return "Step " + String(self.direction.step) + "."
    }
    
    var description: String {
        return self.direction.description
    }
}
