//
//  LandmarkRow.swift
//  MacLandmarks
//
//  Created by Rigo Hernandez on 5/17/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack(alignment: .center){
            landmark.image
            .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .frame(width: 32, height: 32)
            .fixedSize(horizontal: true, vertical: true)
                .cornerRadius(4.0)
            
            VStack(alignment: .leading){
                Text(landmark.name)
                    .fontWeight(.bold)
                    .truncationMode(.tail)
                    .frame(minWidth: 20)
                
                Text(landmark.park)
                    .font(.caption)
                    .opacity(0.625)
                    .truncationMode(.middle)
                
            }
            
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
