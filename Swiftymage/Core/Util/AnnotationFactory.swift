//
//  AnnotationFactory.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 25..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import MapKit
import Foundation

protocol NamedCustomAnnotaion: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D { get }
    var title: String? { get }
    var subtitle: String? { get }
}

class MyConcreteAnnotation: NSObject, NamedCustomAnnotaion {
   
    let coordinate: CLLocationCoordinate2D
    let title: String?
    let subtitle: String?
    
    required init(with coord: CLLocationCoordinate2D, title: String?, subtitle: String?) {
        coordinate = coord
        self.title = title
        self.subtitle = subtitle
    }
}

enum AnnotationFactory {
    
    static func createAnnotation(with coord: CLLocationCoordinate2D, title: String?, subtitle: String?) -> some NamedCustomAnnotaion {
        MyConcreteAnnotation(with: coord, title: title, subtitle: subtitle)
    }
    
}
