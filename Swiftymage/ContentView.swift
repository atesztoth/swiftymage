//
//  ContentView.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 10. 28..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(latitude: 47.959102, longitude: 21.711539, title: "Blues Cafe", subtitle: "Best IPA place")
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
            CircleImage(imageName: "Catioso")
                .frame(minWidth: 100, idealWidth: 150, maxWidth: 150, minHeight: 100, idealHeight: 150, maxHeight: 150, alignment: .center)
                .offset(y: -85)
                .padding(.bottom, -85)
            VStack(alignment: .center, spacing: 10) {
                Text("Don't look at me yet")
                    .kerning(2)
                    .font(.title)
                    .multilineTextAlignment(.center)
                HStack(alignment: .top, spacing: 8) {
                    Text("I am under")
                    Spacer()
                    Text("catstruction 🏗")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
