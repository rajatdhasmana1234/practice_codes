//
//  ModelData.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 28/12/21.
//

import Foundation

final class ModelData : ObservableObject {
    
    @Published var landmarks: [Landmark] = load("landmarkData.json")

    var hikes: [Hike] = load("hikeData.json")
    
    var categories: [String: [Landmark]] {
        
        Dictionary(grouping: landmarks) { $0.category.rawValue }
    }
    
    var featured: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
}



func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    do {
        
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        let obj = try decoder.decode(T.self, from: data)
        return obj
        
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self): \n \(error)")
    }
}
