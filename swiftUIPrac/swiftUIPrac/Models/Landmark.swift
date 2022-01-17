//
//  Landmark.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 28/12/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable , Identifiable {
    
    var id: Int
    var name: String
    var state: String
    var park: String
    var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    var isFavorite: Bool
    
    var category : Category
    
    
    enum Category: String , Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    var isFeatured: Bool
    
    struct Coordinates: Codable {
        
        var latitude: Double
        var longitude: Double
    }
}
