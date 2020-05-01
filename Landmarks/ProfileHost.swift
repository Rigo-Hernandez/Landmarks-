//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Rigo Hernandez on 4/24/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var mode
    @State var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Spacer ()
                
                EditButton()
            }
            ProfileSummary(profile: draftProfile)
        }
    .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
