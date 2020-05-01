//
//  UserData.swift
//  Landmarks
//
//  Created by Rigo Hernandez on 4/18/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
    
}
