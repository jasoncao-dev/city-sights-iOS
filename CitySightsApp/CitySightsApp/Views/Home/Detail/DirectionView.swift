//
//  DirectionView.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/17/22.
//

import SwiftUI

struct DirectionView: View {
    
    var business: Business
    
    var body: some View {
        VStack(alignment: .leading) {
            // Business Title
            HStack {
                VStack(alignment: .leading, spacing: 5.0) {
                    Text(business.name ?? "N/A")
                        .font(Font.system(size: 24, weight: .semibold))
                    Text(business.location?.displayAddress?[0] ?? "N/A")
                        .font(Font.system(size: 16))
                    Text(business.location?.displayAddress?[1] ?? "N/A")
                        .font(Font.system(size: 16))
                    HStack(spacing: 2.5) {
                        Text("\(String(format: "%.1f", (business.distance ?? 0) / 1609)) mi")
                        //Text("1.0 mi")
                            .foregroundColor(.gray)
                        Text("•")
                            .foregroundColor(.gray)
                        Text(String(business.rating ?? 0))
                        //Text("4.5")
                            .foregroundColor(.gray)
                        Text("★")
                            .foregroundColor(.yellow)
                        Text("•")
                            .foregroundColor(.gray)
                        Text("\(business.reviewCount ?? 0)+ ratings")
                        //Text("2,193+ ratings")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .font(Font.system(size: 12, weight: .medium))
                }
                VStack {
                    Button(action: {}) {
                        if let lat = business.coordinates?.latitude, let long = business.coordinates?.longitude, let businessName = business.name {
                            Link("Open in Map", destination: URL(string: "http://maps.apple.com/?ll=\(lat),\(long)&q=\(businessName.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")")!)
                        }
                    }
                }
            }
            .padding()
            
            // Direction map
            DirectionMap(business: business)
                .ignoresSafeArea()
        }
    }
}
