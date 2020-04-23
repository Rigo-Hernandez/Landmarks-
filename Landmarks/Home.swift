//
//  Home.swift
//  Landmarks
//
//  Created by Rigo Hernandez on 4/22/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var categories: [String: [Landmark]]{
        Dictionary(
        grouping: landmarkData,
        by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(categories.keys.sorted(), id: \.self) {
                    key in Text(key)
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}