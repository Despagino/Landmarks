//
//  Landmark.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/23/22.
//

import Foundation
import SwiftUI

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
    
}
