//
//  NavigationDetail.swift
//  MacLandmarks
//
//  Created by Rigo Hernandez on 5/17/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct NavigationDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 12){
                HStack (alignment: .center, spacing: 24) {
                    CircleImage(image: landmark.image.resizable(), shadowRadius: 4)
                        .frame(width: 160, height:160)
                    
                    VStack(alignment: .leading) {
                        HStack {
                                                  Text(landmark.name).font(.title)


                                                  Button(action: {
                                                      self.userData.landmarks[self.landmarkIndex]
                                                          .isFavorite.toggle()
                                                  }) {
                                                      if userData.landmarks[self.landmarkIndex].isFavorite {
                                                          Image("star-filled")
                                                              .resizable()
                                                              .renderingMode(.template)
                                                              .foregroundColor(.yellow)
                                                              .accessibility(label: Text("Remove from favorites"))
                                                      } else {
                                                          Image("star-empty")
                                                              .resizable()
                                                              .renderingMode(.template)
                                                              .foregroundColor(.gray)
                                                              .accessibility(label: Text("Add to favorites"))
                                                      }
                                                  }
                                                  .frame(width: 20, height: 20)
                                                  .buttonStyle(PlainButtonStyle())
                                              }
                        Text(landmark.park)
                        Text(landmark.state)
                    }
                    .font(.caption)
                }
            }
        .padding()
            .frame(maxWidth: 700)
        }
    }
}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetail(landmark: landmarkData[0])
        .environmentObject(UserData())
    }
}
