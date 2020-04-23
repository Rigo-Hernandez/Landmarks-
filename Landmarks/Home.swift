//
//  Home.swift
//  Landmarks
//
//  Created by Rigo Hernandez on 4/22/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationView {
        Text("Landmarks Content")
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
