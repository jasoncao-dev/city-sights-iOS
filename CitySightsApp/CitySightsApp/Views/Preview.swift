//
//  Preview.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/9/22.
//

import SwiftUI

struct Preview: View {
    var body: some View {
        /*
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
                    //Text("Switch to map view")
                }
                .padding(.horizontal, 50.0)
            }
            .padding(.top, 44.0)
        }
        .ignoresSafeArea()
         */
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 379, height: 99)
                .cornerRadius(20.0)
                .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.06), radius: 30.0, x: 0.0, y: 4.0)
            
            HStack(spacing: 15.0) {
                Image("firstwatch_preview")
                    .frame(width: 75, height: 75)
                    .cornerRadius(20.0)
                
                VStack(alignment: .leading, spacing: 7.0) {
                    Text("First Watch")
                        .font(Font.system(size: 16, weight: .medium))
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("Breakfast")
                            .foregroundColor(.white)
                            .font(Font.system(size: 10, weight: .medium))
                            .padding(.vertical, 3.0)
                            .padding(.horizontal, 7.5)
                            .background(.red)
                            .cornerRadius(10.0)
                        Text("1.0 mi • 4.5 ★ • 8,300+ ratings ")
                            .foregroundColor(.gray)
                            .font(Font.system(size: 10, weight: .medium))
                    }
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .frame(width: 30.0, height: 40.0)
            }
            .padding(.horizontal, 40.0)
        }
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview().previewLayout(.sizeThatFits)
    }
}
