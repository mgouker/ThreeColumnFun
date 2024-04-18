//
//  Setting.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
// © 2023 by Gabriel Theodoropoulos
//

import Foundation

// Setting test data.
struct Setting: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var value: String {
        [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            "Pretium viverra suspendisse potenti nullam ac tortor vitae purus.",
            "Laoreet suspendisse interdum consectetur libero id faucibus nisl.",
            "Faucibus et molestie ac feugiat sed lectus vestibulum.",
            "Faucibus et molestie ac feugiat sed lectus vestibulum."
        ][Int.random(in: 0..<5)]
    }
}
 
 
