//
//  WatchLandmarkDetail.swift
//  WatchLandmarks Extension
//
//  Created by Rigo Hernandez on 5/11/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct WatchLandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var LandmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WatchLandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return WatchLandmarkDetail(landmark: userData.landmarks[0])
        .environmentObject(userData)
    }
}
