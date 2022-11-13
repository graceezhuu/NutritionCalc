//
//  Ingredient Database.swift
//  NutritionCalc
//
//  Created by Grace Zhu on 11/15/22.
//

import SwiftUI

struct Ingredient_Database: View {
    @State var selectedTab = ""
    @State var title = ""
    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
                Form {
                    TextField("Ingredient Database", text: $title)
                    }
                }
            }
    }
}

struct Ingredient_Database_Previews: PreviewProvider {
    static var previews: some View {
        Ingredient_Database()
    }
}
