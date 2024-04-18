//
//  CategoricalModel.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
//

import Foundation

class CategoriesModel: ObservableObject {
    @Published var categories: [Category] = [Category(name: "Profile"),
                                             Category(name: "Language"),
                                             Category(name: "Connected Accounts"),
                                             Category(name: "Color Theme")
    ]
}
 
