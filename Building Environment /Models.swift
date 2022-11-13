//
//  Models.swift
//  NutritionCalc
//
//  Created by Grace Zhu on 11/17/22.
//

import Foundation

struct FormSection: Identifiable {
    let id = UUID()
    let key: String
    let header:String?
    let footer: String?
    var items: [FormItem]
}

struct FormItem: Identifiable {
    let id = UUID()
    let key: String
    let kind: Kind
    let val: String
}

extension FormItem {
    enum Kind {
        case text
    }
}

extension FormSection {
    enum Key: String {
        case general
    }
}

extension FormItem {
    enum Key: String {
        case prefix
        case firstName
        case lastName
    }
}
