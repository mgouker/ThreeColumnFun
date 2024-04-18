//
//  Category.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
//

import Foundation

// Basic data object. See CategoryModel for more.
struct Category: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
}
 
