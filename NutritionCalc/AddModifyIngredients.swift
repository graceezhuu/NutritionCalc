//
//  Add: Modify Ingredients.swift
//  NutritionCalc
//
//  Created by Grace Zhu on 11/13/22.
//

import SwiftUI

struct AddModifyIngredients: View {
    @State var title = ""
    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
                Form {
                    TextField("Add/ Modify Ingredients", text: $title)
                    }
                }
            }
    }
}

struct Add__Modify_Ingredients_Previews: PreviewProvider {
    static var previews: some View {
        AddModifyIngredients()
    }
}
