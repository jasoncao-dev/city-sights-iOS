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
    @State var spinner = false
    @State var selectedBusiness: Business?
    
    var body: some View {
        if model.restaurants.count != 0 || model.sights.count != 0 {
            // Determine if we should show list or map
            NavigationView {
                TabView {
                    VStack {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: 428, height: 190)
                                .cornerRadius(35.0, corners: [.bottomLeft, .bottomRight])
                                .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.06), radius: 30.0, x: 0.0, y: 4.0)
                            
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 379, height: 60)
                                    .cornerRadius(30.0)
                                HStack {
                                    Image(systemName: "mappin.and.ellipse")
                                        .frame(width: 20, height: 20)
                                    Text("San Francisco, CA")
                                        .font(.system(size: 16))
                                    Spacer()
                                }
                                .padding(.horizontal, 50.0)
                            }
                            .padding(.top, 44.0)
                        }
                        //.ignoresSafeArea()
                        
                        BusinessList()
                            .padding(.bottom, 60.0)
                    }
                    .navigationBarHidden(true)
                    .background(Color(red: 0.96078, green: 0.96078, blue: 0.97255))
                    .ignoresSafeArea()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("List")
                    }
                    
                    
                    BusinessMap(selectedBusiness: $selectedBusiness)
                        .ignoresSafeArea()
                        .sheet(item: $selectedBusiness, content: { business in
                            // Create a business detail view instance
                            // Pass in the selection business
                            BusinessDetail(business: business)
                        })
                        .tabItem {
                            Image(systemName: "map")
                            Text("Map")
                        }
                }
                .onAppear {
                    let appearance = UITabBarAppearance()
                    appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                    appearance.backgroundColor = UIColor(Color("blue").opacity(0.2))
                    
                    // Use this appearance when scrolling behind the TabView:
                    UITabBar.appearance().standardAppearance = appearance
                    // Use this appearance when scrolled all the way up:
                    UITabBar.appearance().scrollEdgeAppearance = appearance
                }
                /*
                 if !isMapShowing {
                 // Show list
                 VStack {
                 ZStack {
                 
                 Rectangle()
                 .foregroundColor(.red)
                 .frame(width: 428, height: 190)
                 .cornerRadius(35.0, corners: [.bottomLeft, .bottomRight])
                 .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.06), radius: 30.0, x: 0.0, y: 4.0)
                 
                 ZStack {
                 Rectangle()
                 .foregroundColor(.white)
                 .frame(width: 379, height: 60)
                 .cornerRadius(30.0)
                 HStack {
                 Image(systemName: "mappin.and.ellipse")
                 .frame(width: 20, height: 20)
                 Text("San Francisco, CA")
                 .font(.system(size: 16))
                 Spacer()
                 Button(action: {
                 isMapShowing = true
                 }) {
                 Text("Map View")
                 }
                 }
                 .padding(.horizontal, 50.0)
                 }
                 .padding(.top, 44.0)
                 }
                 //.ignoresSafeArea()
                 
                 BusinessList()
                 }
                 .navigationBarHidden(true)
                 .background(Color(red: 0.96078, green: 0.96078, blue: 0.97255))
                 .ignoresSafeArea()
                 } else {
                 // Show map
                 BusinessMap()
                 .ignoresSafeArea()
                 }*/
            }
        } else {
            // Still waiting for data, so show spinner
            Spinner()
        }
    }
}
