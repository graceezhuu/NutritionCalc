//
//  ContentView.swift
//  NutritionCalc
//
//  Created by Grace Zhu on 11/12/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            MenuCalculator()
                .tabItem {
                    Label("Menu Item Calculator", systemImage: "house.fill")

                }
            MenuItemDatabase()
                .tabItem{
                    Text("Menu Item Database")
                    Image(systemName: "house.fill")
                }
            AddModifyIngredients()
                .tabItem{
                    Text("Add/Modify Ingredients")
                    Image(systemName: "house.fill")
                }
            Ingredient_Database()
                .tabItem {
                    Text("Ingredient  Database")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .frame(width: 20)
                    Image(systemName: "house.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//this is extra code for a different design of tabview
//TabView {
//            NavigationStack {
//                List {
//                    Text("Home Content")
//                        .frame(height: 500)
//
//                }
//                .navigationTitle("Home Title")
//            }
//            .tabItem {
//                Label("Home", systemImage: "house")
//            }
//
//            MenuItemDatabase()
//                .tabItem {
//                    Text("Menu Item Database")
//                        .frame(width: 10, height: 30)
//                        .truncationMode(.tail)
//                        .allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
//                    Image(systemName: "house.fill")
//                }
//            AddModifyIngredients()
//                .tabItem {
//                    Label("Add/Modify Ingredients", systemImage: "bell")
//                }
//            Ingredient_Database()
//                .tabItem {
//                    Label("Ingredient Database", systemImage: "gearshape")
//                }
//        }
