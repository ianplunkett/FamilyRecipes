//
//  AddRecipeView.swift
//  FamilyRecipes
//
//  Created by Ian Plunkett on 4/5/20.
//  Copyright © 2020 Ian Plunkett. All rights reserved.
//

import SwiftUI

struct AddRecipeView: View {

    @State private var name: String = ""
    @State private var prepTime: String = ""
    @State private var cookTime: String = ""

    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            Form {
                TextField("Name", text: $name)
                TextField("Prep Time", text: $prepTime)
                TextField("Cook Time", text: $cookTime)
            }.navigationBarTitle(Text("Add Recipe"))
            Button("Save") {
                self.isPresented = false
            }
        }

    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView(isPresented: .constant(false))
    }
}
