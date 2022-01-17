//
//  swiftUIPracApp.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 28/12/21.
//

import SwiftUI

@main
struct swiftUIPracApp: App {
    
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
