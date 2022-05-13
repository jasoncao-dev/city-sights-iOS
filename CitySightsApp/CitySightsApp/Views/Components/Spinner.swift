//
//  Spinner.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/7/22.
//

import SwiftUI

struct Spinner: View {
    
    @State var isAnimating = false
    
    var body: some View {
        HStack {
            Circle()
                .fill(.red)
                .frame(width: 20.0, height: 20.0)
                .scaleEffect(isAnimating ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever())
            
            Circle()
                .fill(.red)
                .frame(width: 20.0, height: 20.0)
                .scaleEffect(isAnimating ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.3))
            
            Circle()
                .fill(.red)
                .frame(width: 20.0, height: 20.0)
                .scaleEffect(isAnimating ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6))
            
        }
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct Spinner_Previews: PreviewProvider {
    static var previews: some View {
        Spinner()
    }
}
