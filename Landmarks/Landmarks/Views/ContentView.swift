//
//  ContentView.swift
//  Landmarks
//
//  Created by Renuka Pandey on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            LandmarkList()
                .environment(ModelData())
        } else {
            // Fallback on earlier versions
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(ModelData())
    }
}
