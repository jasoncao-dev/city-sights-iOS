//
//  InfoDetailRow.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/13/22.
//

import SwiftUI

struct InfoDetailRow: View {
    
    var iconBgColor: String
    var iconColor: String
    var image: String
    var text: String
    
    var body: some View {
        HStack(spacing: 15.0) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color(iconBgColor))
                    .frame(width: 36.0, height: 36.0)
                    .cornerRadius(10.0)
                Image(systemName: image)
                    .foregroundColor(Color(iconColor))
                    .frame(width: 16.0, height: 16.0)
            }
            
            Text(text)
                .lineLimit(2)
                .font(Font.system(size: 14))
            
        }
        .padding(.horizontal, 40.0)
    }
}

struct InfoDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetailRow(iconBgColor: "purple", iconColor: "purple-dark", image: "map", text: "2692 Madison Rd, Cincinnati, OH 45208")
            .previewLayout(.sizeThatFits)
    }
}
