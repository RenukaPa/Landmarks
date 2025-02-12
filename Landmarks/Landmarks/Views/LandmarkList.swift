//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Renuka Pandey on 12/02/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        ScrollView {
            NavigationSplitView {
                List(landmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }            }
                .navigationTitle("Landmarks")
            } detail: {
                Text("Select a Landmark")
            }
        }
        .padding()
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
