//
//  ContentView.swift
//  ThreeColumnFun
//
//  Created by mgouker on 4/17/24.
// © 2023 by Gabriel Theodoropoulos
//

import SwiftUI

/// The main view of the ThreeColumnFun application.
struct ContentView: View {
    /// The body of the view, defining its UI.
    var body: some View {
        NavigationView {
            // The first column is the sidebar.
            Sidebar()
 
            // Initial content of the second column.
            EmptyView()
 
            // Initial content for the third column.
            Text("Select a category of settings in the sidebar.")
        }
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.navigation) {
                Button {
                    // Action for toggling the sidebar.
                } label: {
                    Label("Toggle sidebar", systemImage: "sidebar.left")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
