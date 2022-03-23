//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/23/22.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark

    
    var body: some View {
        HStack {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
