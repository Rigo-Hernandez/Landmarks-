//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Rigo Hernandez on 5/11/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}
