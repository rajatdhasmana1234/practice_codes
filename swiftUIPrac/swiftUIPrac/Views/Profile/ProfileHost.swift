//
//  ProfileHost.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 30/12/21.
//

import SwiftUI

struct ProfileHost: View {
    
    @State private var draftProfile: Profile = Profile.default
    
    var body: some View {
        Text("Profile For: \(draftProfile.username)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
