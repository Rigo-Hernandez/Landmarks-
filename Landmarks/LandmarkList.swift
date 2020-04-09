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
        List{
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
