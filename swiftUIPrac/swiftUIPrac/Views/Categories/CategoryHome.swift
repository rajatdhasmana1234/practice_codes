//
//  CategoryHome.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 30/12/21.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
                
        NavigationView {
            
            List {
                
                
                if let feat = modelData.featured.first {
                    feat.image
                        .resizable()
                        .frame(minWidth: 0, maxWidth: .infinity , minHeight: 200, maxHeight: 200)
                        
                        .cornerRadius(5)
                        .scaledToFill()
//                        .clipped()
                        .listRowInsets(EdgeInsets())
                }
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                        .listRowInsets(EdgeInsets())
                }
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
