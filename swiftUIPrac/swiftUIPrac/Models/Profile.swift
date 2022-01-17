//
//  Profile.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 30/12/21.
//

import Foundation


struct Profile {
    
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "Rajat")
    
    enum Season: String {
        
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {rawValue}

    }
}
