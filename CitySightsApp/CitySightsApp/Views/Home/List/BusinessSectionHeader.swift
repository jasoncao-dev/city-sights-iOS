//
//  BusinessSectionHeader.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/7/22.
//

import SwiftUI

struct BusinessSectionHeader: View {
    
    var title: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color(red: 0.96078, green: 0.96078, blue: 0.97255))
                .frame(height: 50.0)

            HStack {
                Text(title)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                
                Spacer()
                Button(action: {}, label: {
                    ZStack {
                        Circle()
                            .foregroundColor(Color(red: 0.99216, green: 0.94118, blue: 0.94902))
                            .frame(width: 32, height: 32)
                        Image(systemName: "arrow.forward")
                            .foregroundColor(.red)
                            .font(Font.system(size: 12, weight: .heavy))
                    }
                })
                .tint(.black)
            }
        }
        
    }
}

struct BusinessSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        BusinessSectionHeader(title: "Sights")
            .previewLayout(.sizeThatFits)
        BusinessSectionHeader(title: "Restaurants")
            .previewLayout(.sizeThatFits)
    }
}
