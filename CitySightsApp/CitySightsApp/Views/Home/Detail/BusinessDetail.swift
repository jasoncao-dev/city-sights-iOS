//
//  BusinessDetail.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/13/22.
//

import SwiftUI

struct BusinessDetail: View {
    
    var business: Business
    
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader() { geometry in
                AsyncImage(url: URL(string: business.imageUrl ?? "firstwatch_preview" )) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .scaledToFill()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipped()
            }
            .ignoresSafeArea(.all, edges: .top)
            
            
            ZStack(alignment: .leading) {
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 428, height: 40)
                    .cornerRadius(20.0, corners: [.bottomLeft, .bottomRight])
                
                Text("Open")
                    .foregroundColor(.white)
                    .font(Font.system(size: 14, weight: .medium))
                    .padding(.leading)
            }
            
            VStack {
                HStack(spacing: 15.0) {
                    
                    AsyncImage(url: URL(string: business.imageUrl ?? "firstwatch_preview")) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    //Image("firstwatch_preview")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .cornerRadius(20.0)
                    
                    
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(business.name ?? "")
                            .font(Font.system(size: 28, weight: .semibold))
                        VStack(alignment: .leading, spacing: 8.0) {
                            Text(business.categories?[0].title ?? "Business")
                                .foregroundColor(.white)
                                .font(Font.system(size: 12, weight: .medium))
                                .padding(.vertical, 3.0)
                                .padding(.horizontal, 7.5)
                                .background(.red)
                                .cornerRadius(10.0)
                            HStack(spacing: 2.5) {
                                Text("\(String(format: "%.1f", (business.distance ?? 0) / 1609)) mi")
                                    .foregroundColor(.gray)
                                Text("•")
                                    .foregroundColor(.gray)
                                Text(String(business.rating ?? 0))
                                    .foregroundColor(.gray)
                                Text("★")
                                    .foregroundColor(.yellow)
                                Text("•")
                                    .foregroundColor(.gray)
                                Text("\(business.reviewCount ?? 0)+ ratings")
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            .font(Font.system(size: 12, weight: .medium))
                        }
                    }
                    
                    Spacer()
                }
                .padding(20.0)
            }
            
            VStack(alignment: .leading) {
                Text("Info")
                    .font(Font.system(size: 16, weight: .semibold))
                    .padding(.horizontal)
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 370, height: 203)
                        .cornerRadius(20.0)
                        .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.06), radius: 30.0, x: 0.0, y: 4.0)
                    VStack(alignment: .leading, spacing: 12.0) {
                        InfoDetailRow(iconBgColor: "purple", iconColor: "purple-dark", image: "map", text: business.location?.displayAddress?.joined(separator: ", ") ?? "N/A")
                        Divider()
                            .padding(.leading, 90)
                            .padding(.trailing, 40)
                        InfoDetailRow(iconBgColor: "red", iconColor: "red-dark", image: "safari", text: business.url ?? "N/A")
                        Divider()
                            .padding(.leading, 90)
                            .padding(.trailing, 40)
                        InfoDetailRow(iconBgColor: "blue", iconColor: "blue-dark", image: "phone", text: business.displayPhone ?? "N/A")
                    }
                }
                
            }
            .padding()
            
            Spacer()
            
            Button(action: {}) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 225, height: 42)
                        .cornerRadius(30.0)
                        .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.06), radius: 30.0, x: 0.0, y: 4.0)
                    
                    Text("Get Directions")
                        .font(Font.system(size: 14.0, weight: .medium))
                }
            }
            .padding(.bottom, 15.0)
            .tint(.white)
        }
        .background(Color(red: 0.96078, green: 0.96078, blue: 0.97255))
    }
}

//struct BusinessDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        BusinessDetail()
//    }
//}
