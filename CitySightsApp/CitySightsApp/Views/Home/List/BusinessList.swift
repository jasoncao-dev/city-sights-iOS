//
//  BusinessList.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/7/22.
//

import SwiftUI

struct BusinessList: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]) {
                BusinessSection(title: "Restaurants", businesses: model.restaurants)
                BusinessSection(title: "Sights", businesses: model.sights)
            }
            .padding()
        }
    }
}
