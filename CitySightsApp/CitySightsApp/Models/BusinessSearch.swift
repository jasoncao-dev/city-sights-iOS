//
//  BussinessSearch.swift
//  CitySightsApp
//
//  Created by Jason Cao on 5/7/22.
//

import Foundation

struct BusinessSearch: Decodable {
    
    var businesses = [Business]()
    var total = 0
    var region = Region()
    
}

struct Region: Decodable {
    
    var center = Coordinate()
    
}
