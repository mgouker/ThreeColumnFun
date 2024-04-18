//
//  SettingsModel.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
// © 2023 by Gabriel Theodoropoulos
//

import Foundation

// A model of test data.
class SettingsModel: ObservableObject {
    @Published var settings = [Setting]()
    
    init(with category: String) {
        switch category {
        case "Profile":
            settings = [Setting(name: "Name"),
                        Setting(name: "Picture"),
                        Setting(name: "Gender")]
                
        case "Language":
            settings = [Setting(name: "English"), Setting(name: "German"),
                        Setting(name: "French"), Setting(name: "Italian"),
                        Setting(name: "Spanish"), Setting(name: "Greek"),
                        Setting(name: "Russian"), Setting(name: "Hindi"),
                        Setting(name: "Chinese")]
                
        case "Connected Accounts":
            settings = [Setting(name: "Facebook”), Setting(name: “Twitter"),
                        Setting(name: "Instagram"), Setting(name: "Linkedin"),
                        Setting(name: "Google")]
                
        case "Color Theme":
            settings = [Setting(name: "Red"),
                            Setting(name: "Yellow"),
                            Setting(name: "Purple"), 
                            Setting(name: "Green"),
                            Setting(name: "Monochrome")]
                
            default: break
        }
    }
}

