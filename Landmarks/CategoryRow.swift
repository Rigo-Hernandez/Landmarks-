//
//  CategorySwift.swift
//  Landmarks
//
//  Created by Rigo Hernandez on 4/22/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    

        var body: some View {
            VStack(alignment: .leading) {
                Text(self.categoryName)
                    .font(.headline)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(self.items) { landmark in
                            Text(landmark.name)
                        }
                    }
                }
                .frame(height: 185)
            }
        }
    }

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue, items: Array(landmarkData.prefix(4)))
    }
}