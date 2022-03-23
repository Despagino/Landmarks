//
//  ContentView.swift
//  Landmarks
//
//  Created by Gino Tasis on 3/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Retro Ftiness")
                .font(.largeTitle)
                .foregroundColor(.black)
            HStack {
                Text("Bronx, NY")
                    .font(.subheadline)
                Spacer()
                Text("11101")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
