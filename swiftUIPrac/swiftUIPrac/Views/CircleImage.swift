//
//  CircleImage.swift
//  swiftUIPrac
//
//  Created by RAJAT DHASMANA on 28/12/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        
        image
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        
        let x = UIImage(named: "stmarylake")!
        CircleImage(image: Image(uiImage: x))
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
