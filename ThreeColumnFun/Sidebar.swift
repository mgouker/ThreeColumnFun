//
//  Sidebar.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
//

import Foundation
import SwiftUI

/// A view displaying a sidebar with settings categories.
struct Sidebar: View {
    /// The model containing the settings categories.
    @ObservedObject var settingsCategories = CategoriesModel()
    
    /// The currently selected category.
    @State private var selectedCategory: Category?
    
    /// The body of the sidebar view, defining its UI.
    var body: some View {
        List(settingsCategories.categories) { category in
            NavigationLink(
                destination: SettingsListView(settingsCategory: category),
                tag: category,
                selection: $selectedCategory,
                label: {
                    HStack {
                        Image(systemName: "folder")
                        Text(category.name)
                    }
                })
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 200)
    }
}
