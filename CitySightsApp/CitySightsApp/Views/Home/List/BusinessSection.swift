//
//  BusinessSection.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/7/22.
//

import SwiftUI

struct BusinessSection: View {
    
    var title: String
    var businesses: [Business]
    
    var body: some View {
        Section(header: BusinessSectionHeader(title: title)) {
            ForEach (businesses) { business in
//                Text(business.name ?? "")
//                Divider()
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 99)
                        .cornerRadius(20.0)
                        .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.06), radius: 30.0, x: 0.0, y: 4.0)
                    
                    HStack(spacing: 15.0) {
                        
                        AsyncImage(url: URL(string: business.imageUrl ?? "firstwatch_preview")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .cornerRadius(20.0)

                        
                        VStack(alignment: .leading, spacing: 7.0) {
                            Text(business.name ?? "")
                                .font(Font.system(size: 16, weight: .medium))
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("Breakfast")
                                    .foregroundColor(.white)
                                    .font(Font.system(size: 10, weight: .medium))
                                    .padding(.vertical, 3.0)
                                    .padding(.horizontal, 7.5)
                                    .background(.red)
                                    .cornerRadius(10.0)
                                HStack(spacing: 2.5) {
                                    Text("1.0 mi")
                                        .foregroundColor(.gray)
                                    Text("•")
                                        .foregroundColor(.gray)
                                    Text("4.5")
                                        .foregroundColor(.gray)
                                    Text("★")
                                        .foregroundColor(.yellow)
                                    Text("•")
                                        .foregroundColor(.gray)
                                    Text("8,300+ ratings")
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                .font(Font.system(size: 10, weight: .medium))
                            }
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .frame(width: 30.0, height: 40.0)
                    }
                    .padding(.horizontal, 20.0)
                }
                .padding(.vertical, 5.0)
            }
        }
    }
}
