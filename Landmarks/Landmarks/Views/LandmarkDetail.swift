//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Renuka Pandey on 12/02/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            
            MapView(coordinate: landmark.locationCoordinate).frame(width: 400, height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                VStack {
                    Text(landmark.name)
                        .font(.title)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
