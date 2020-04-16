//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Rigo Hernandez on 4/8/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//


import SwiftUI


struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

