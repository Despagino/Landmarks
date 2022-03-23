//
//  Landmark.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/23/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable {
    
    let name: String
    let city: String
    let state: String
    let id: Int
    let park: String
    let description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude)
       }
    
}

struct Coordinates: Codable {
        var latitude: Double
        var longitude: Double
}
