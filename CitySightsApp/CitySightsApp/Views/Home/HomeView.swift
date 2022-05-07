//
//  HomeView.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/7/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    @State var isMapShowing = false
    
    var body: some View {
        if model.restaurants.count != 0 || model.sights.count != 0 {
            // Determine if we should show list or map
            if !isMapShowing {
                // Show list
                VStack {
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text("San Francisco, CA")
                        Spacer()
                        Text("Switch to map view")
                    }
                    Divider()
                    BusinessList()
                }
            } else {
                // Show map
            }
            
        } else {
            // Still waiting for data, so show spinner
            ProgressView()
        }
    }
}
