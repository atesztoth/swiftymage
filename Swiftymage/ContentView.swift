//
//  ContentView.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 10. 28..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View, ViperView {
    
    internal let presenter: Presenter = MainPresenter()
    
    @State private var catImage = CircleImage(imageName: "Catioso")
    
    @State private var tick = true
    
    var body: some View {
        VStack {
            MapView(latitude: 47.959102, longitude: 21.711539, title: "Blues Cafe", subtitle: "Best IPA place")
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
            catImage
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
                Button (action: {
                    (self.presenter as? MainPresenter)?.fetchAnImage { (res: UIImage?, error: Error?) in
                        guard let img = res, error == nil else {
                            print("error: \(error.debugDescription)")
                            return
                        }
                        
                        self.catImage = CircleImage(injectedImage: Image(uiImage: img))
                    }
                }) {
                    Text("Update the image!")
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
