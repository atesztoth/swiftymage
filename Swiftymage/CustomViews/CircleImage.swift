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
    
    var body: some View {
        Image(imageName ?? "Catioso")
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
