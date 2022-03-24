//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/23/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    

    var landmarkIndex: Int {
        
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
        
    }
    
    var body: some View {
            ScrollView {
                MapView(coordinates: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
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
            }
            .ignoresSafeArea(edges: .top)
        }
    }


struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
