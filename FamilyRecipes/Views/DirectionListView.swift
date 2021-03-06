//
//  DirectionListView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 3/23/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct DirectionListView: View {

    let directions: [DirectionViewModel]

    init(directions: [DirectionViewModel]) {
        self.directions = directions
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text("Directions").font(.title).fontWeight(.bold)
            ForEach(self.directions, id: \.id) { direction in
                DirectionView(direction: direction)
            }
        }
    }
}

struct DirectionListView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionListView(directions:
            [DirectionViewModel(direction: Direction(id: UUID(), step: 1, description: "Boiling Pasta for 5 minutes or until done"))])
    }
}
