//
//  SettingDetailsView.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/18/24.
//

import Foundation
import SwiftUI

/// A view displaying details of a setting.
struct SettingDetailsView: View {
    /// The setting to display details for.
    var setting: Setting
    
    /// The body of the setting details view, defining its UI.
    var body: some View {
        Text(setting.value)
            .font(.title2)
            .padding(.horizontal)
            .navigationTitle(setting.name)
    }
}
