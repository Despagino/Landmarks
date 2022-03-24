//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/23/22.
//

import SwiftUI

struct LandmarkRow: View {
    
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                    Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding()
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {

    static var previews: some View {
            LandmarkRow(landmark: ModelData().landmarks[0])
                        .previewLayout(.fixed(width: 300, height: 70))
    }
}
