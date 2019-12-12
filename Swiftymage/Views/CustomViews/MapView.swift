//
//  MapView.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 25..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let latitude: Double
    let longitude: Double
    let title: String?
    let subtitle: String?
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: self.latitude, longitude: self.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        view.setRegion(region, animated: true)
        
        if let title = title {
            let place = AnnotationFactory.createAnnotation(with: coordinate, title: title, subtitle: subtitle)
            view.addAnnotation(place)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(latitude: 47.959102, longitude: 21.711539, title: nil, subtitle: nil)
    }
}
