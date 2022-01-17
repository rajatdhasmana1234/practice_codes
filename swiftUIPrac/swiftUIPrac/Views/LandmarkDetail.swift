//
//  LandmarkDetail.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 29/12/21.
//

import SwiftUI

struct LandmarkDetail: View {
    
    
    @EnvironmentObject var modelData: ModelData
    
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        
        modelData.landmarks.firstIndex { $0.id == landmark.id }!
    }
    
    
    var body: some View {
        
    
        ScrollView {
            
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
//                Label("Label", systemImage: "42.circle")
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
