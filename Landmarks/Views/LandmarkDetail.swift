//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/23/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        
            VStack {
                MapView(coordinates: landmark.locationCoordinate)
                    .frame(height: 400)
                    .ignoresSafeArea(edges: .top)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack (alignment: .leading) {
                    Text(landmark.name)
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    Text("About \(landmark.name)")
                            .font(.title2)
                    Text("\(landmark.description)")
                }
                .padding()
                Spacer()
            }
        }

    }


struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[1])
    }
}
