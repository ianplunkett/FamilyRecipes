//
//  Unit.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/22/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import Foundation

enum Unit {
//TODO: Revisit the consideration here. This enum doesn't feel right
    case DryVolume(DryVolumeType)
    case WetVolume(WetVolumeType)

    enum DryVolumeType: String {
        case teaspoon = "Teaspoon"
        case tablespoon = "Tablespoon"
        case cup = "Cup"
        case pound = "Pound"
    }

    enum WetVolumeType: String {
        case ounce = "Ounce"
        case pint = "Pint"
        case quart = "Quart"
        case gallon = "Gallon"
    }

}

