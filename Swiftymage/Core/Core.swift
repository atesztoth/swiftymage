//
//  ServiceContainer.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 22..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import Foundation

protocol Service {
    static var name: String { get }
}

class Core {
    private static let sharedInstance = Core()
    
    private let services: [String:Service] = [DataFetcher.name: DataFetcher.sharedInstance]
    
    var networkFetcher: DataFetcher {
        return services[DataFetcher.name] as! DataFetcher
    }
    
    
    private init() { }
}
