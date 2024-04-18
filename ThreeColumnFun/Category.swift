//
//  Category.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
// © 2023 by Gabriel Theodoropoulos
//

import Foundation

// Basic data object. See CategoryModel for more.
struct Category: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
}
 
