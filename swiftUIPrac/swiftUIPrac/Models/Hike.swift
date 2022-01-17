//
//  Hike.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 30/12/21.
//

import Foundation


struct Hike: Codable {
    
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter.string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable {
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
        var distanceFromStart: Double

    }
}


//"name":"Lonesome Ridge Trail",
//"id":1001,
//"distance":4.5,
//"difficulty":3,
//"observations":[
//    {
//"elevation":[
//    291.65263635636268,
//    309.26016677925196
//],
//"pace":[
//    396.08716481908732,
//    403.68937873525232
//],
//"heartRate":[
//    117.16351898665887,
//    121.95815455919609
//],
//"distanceFromStart":0
