//
//  ContentView.swift
//  NutritionCalc
//
//  Created by Grace Zhu on 11/6/22.
//

import SwiftUI

struct MenuCalculator: View {
    @State private var name: String = ""
    @State var menuitem: String = ""
    @State var ingredient: String = ""
    @State var servings: String = ""
    @State var showPopUp: Bool = false

    
    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
                Form {
                    TextField("Menu Item Name", text: $menuitem)
                    Section(header: Text("Enter Ingredients(separate with commas and space)")
                        .multilineTextAlignment(.leading), footer: Text("")) {
                            TextField("Ingredients", text: $ingredient)
                          }
                    Section(header: Text("Enter Estimated # of Servings (in order)")
                        .multilineTextAlignment(.leading), footer: Text("")) {
                            TextField("Servings", text: $servings)
                          }
                    Section {
                        Button(action: {
                            withAnimation(.linear(duration: 0.5)) {
                                showPopUp.toggle()
                            }
                        }, label: {
                            Text("Calculate")
                        })
                    }
                }
                .navigationTitle("Menu Item Calculator")
                
            }
            PopUpWindow(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", show: $showPopUp)
        }

    }
    
    struct MenuCalculator_Previews: PreviewProvider {
        static var previews: some View {
            MenuCalculator()
                .previewDevice("iPhone 14")
                .previewInterfaceOrientation(.portrait)
                .previewLayout(.device)
            
        }
    }
}


