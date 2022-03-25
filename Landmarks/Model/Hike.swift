//
//  Hike.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/24/22.
//

import Foundation

struct Hike: Codable, Identifiable {
    
    let name: String
    let id: Int
    let distance: Double
    let difficulty: Int
    let observations: [Observations]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        
        Hike.formatter.string(fromValue: distance, unit: .kilometer)
        
    }
    
}


struct Observations: Codable {
    
    let elevation: Range<Double>
    let pace: Range<Double>
    let heartRate: Range<Double>
    
    let distanceFromStart: Double
    
}
