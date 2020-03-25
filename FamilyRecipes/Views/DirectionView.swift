//
//  DirectionView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct DirectionView: View {

    let direction: DirectionViewModel

    var body: some View {
        HStack(alignment: .top) {
            Text("Step " + String(direction.step) + ".")
            Text(direction.description)
        }
    }
}

struct DirectionView_Previews: PreviewProvider {
    static var previews: some View {
        //TODO: This is messy and not resuable. Pull this from JSON that can also be used for tests
        DirectionView(direction: DirectionViewModel(direction: Direction(id: UUID(), step: 1, description: "Boiling Pasta for 5 minutes or until done")))
    }
}
