//
//  MenuItemDatabase.swift
//  NutritionCalculator
//
//  Created by Grace Zhu on 11/11/22.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    var name: String
    var isContacted = false
}

struct MenuItemDatabase: View {
    @State private var users = [
            User(name: "Taylor"),
            User(name: "Justin"),
            User(name: "Adele")
        ]

        var body: some View {
            List($users) { $user in
                Text(user.name)
                Spacer()
            }
        }
    }

struct MenuItemDatabase_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDatabase()
    }
}
