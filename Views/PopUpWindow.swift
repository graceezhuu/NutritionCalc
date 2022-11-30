//
//  PopUpWindow.swift
//  NutritionCalc
//
//  Created by Grace Zhu on 11/17/22.
//

import SwiftUI

struct PopUpWindow: View {
    var title: String
    var message: String
    var buttonText: String
    @Binding var show: Bool
    var body: some View {
        ZStack {
            if show {
                // PopUp background color
                Color.black.opacity(0)
                // PopUp Window
                VStack(alignment: .center) {
                    Text(title)
                        .frame(maxWidth: .infinity)
                        .frame(height: 85, alignment: .center)
                        .foregroundColor(Color.white)
                        .background(Color(red: 0/255, green: 20/255, blue: 45/255))
                    Text(message)
                        .multilineTextAlignment(.center)
                        .font(Font.system(size: 16, weight: .semibold))
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                        .foregroundColor(Color.white)
                    Button(action: {
                        // Dismiss the PopUp
                        withAnimation(.linear(duration: 0.5)) {
                            show = false
                        }
                    }, label: {
                        Text(buttonText)
                            .frame(maxWidth: .infinity)
                            .frame(height: 80, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
                            .font(Font.system(size: 23, weight: .semibold))
                    }).buttonStyle(PlainButtonStyle())
                }
                .frame(maxWidth: 300)
                .border(Color.white, width: 0)
                .background(Color(red: 50/255, green: 168/255, blue: 282/255))
            }
        }
    }
}
struct PopUpWindow_Previews: PreviewProvider {
    static var previews: some View {
        PopUpWindow(title: "Hi", message: "hi", buttonText: "Hi", show: .constant(true))
    }
}
