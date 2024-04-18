//
//  CategoricalModel.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
// © 2023 by Gabriel Theodoropoulos
//

import Foundation

class CategoriesModel: ObservableObject {
    @Published var categories: [Category] = [Category(name: "Profile"),
                                             Category(name: "Language"),
                                             Category(name: "Connected Accounts"),
                                             Category(name: "Color Theme")
    ]
}
 
