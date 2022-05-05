//
//  CitySightsApp.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/4/22.
//

import SwiftUI

@main
struct CitySightsApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
        }
    }
}
