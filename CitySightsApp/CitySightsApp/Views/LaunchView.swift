//
//  LaunchView.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/4/22.
//

import SwiftUI

struct LaunchView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        // Detect the authorization status of geolocating the user
        if model.authorizationStatus == .notDetermined {
            // If undetermined, show onboarding
        } else if model.authorizationStatus == .authorizedAlways || model.authorizationStatus == .authorizedWhenInUse {
            // If approved show home view
            HomeView()
        } else {
            // If denied show denied view
        }
    }
}
