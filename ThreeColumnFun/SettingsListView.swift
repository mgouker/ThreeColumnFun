//
//  SettingsListView.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
//

import Foundation
import SwiftUI

/// A view displaying settings for a specific category.
struct SettingsListView: View {
    /// The category for which settings are displayed.
    var settingsCategory: Category
    
    /// The model containing the settings for the category.
    @ObservedObject var settingsModel: SettingsModel
    
    /// The currently selected setting.
    @State private var selectedSetting: Setting?
    
    /// Initializes the settings list view with the specified category.
    /// - Parameter settingsCategory: The category for which settings are displayed.
    init(settingsCategory: Category) {
        self.settingsCategory = settingsCategory
        settingsModel = SettingsModel(with: settingsCategory.name)
    }
    
    /// The body of the settings list view, defining its UI.
    var body: some View {
        List(settingsModel.settings) { setting in
            NavigationLink(destination: SettingDetailsView(setting: setting),
                           tag: setting,
                           selection: $selectedSetting) {
                HStack {
                    Image(systemName: "gearshape")
                    Text(setting.name)
                }
            }
        }
        .navigationTitle(settingsCategory.name)
    }
}

