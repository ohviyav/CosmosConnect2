//
//  CosmosConnect2App.swift
//  CosmosConnect2
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

@main
struct CosmosConnect2App: App {
    
    init() {
        // Navigation Bar Appearance
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.backgroundColor = UIColor.systemIndigo // Customize as you like
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().tintColor = .white // Back button and icon color

        // Tab Bar Appearance
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.black // Customize as you like

        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        UITabBar.appearance().tintColor = UIColor.systemYellow // Selected icon color
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray // Unselected icon color
    }

    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
