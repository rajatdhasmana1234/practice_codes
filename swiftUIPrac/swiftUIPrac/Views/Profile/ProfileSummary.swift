//
//  ProfileSummary.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 30/12/21.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile: Profile
    
    var body: some View {
        
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10.0) {
                
                Text(profile.username)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
               
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)

            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
