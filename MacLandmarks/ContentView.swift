//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Rigo Hernandez on 5/17/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedLandmark: Landmark?
    
    var body: some View {
        NavigationView{
        NavigationMaster(selectedLandmark: $selectedLandmark)
            
            if selectedLandmark != nil {
                NavigationDetail(landmark: selectedLandmark!)
            }
    }
        .frame(maxWidth: 700, maxHeight: 500)

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(UserData())
    }
}
