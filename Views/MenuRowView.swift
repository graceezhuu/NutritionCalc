//
//  MenuRowView.swift
//  NutritionCalc
//
//  Created by Grace Zhu on 11/15/22.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack {
            //menu name
            Text("apple pie")
            //calories
            Text("10")
                .frame(width:40)
            //serving size
            Text("100 grams")
                .frame(width:50)
            Text("Ingredients")
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}
