//
//  CircleImage.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 25..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String?
    var injectedImage: Image?
    
    private func determineImage() -> Image {
        switch (imageName, injectedImage) {
        case let (.some(fixName), _):
            return Image(fixName)
        case let (_, .some(fixImage)):
            return fixImage
        default:
            return Image("Catioso")
        }
    }
    
    var body: some View {
        determineImage()
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "Catioso")
    }
}
