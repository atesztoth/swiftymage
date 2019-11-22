//
//  ImageService.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 22..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import Foundation

enum FetchAutoParseError: Error {
    case unableToParse(reason: String)
}

enum FetchError: Error {
    case noData
    case cannotCastToType
}

protocol FetchAutoParsable {
    
    associatedtype T
    
    static func parse(from: Data) -> T?
    
}

class DataFetcher: Service {
    
    public static let name = "DataFetcher"
    
    public static let sharedInstance = DataFetcher()
    
    private init() { }
    
    func fetchData<T> (from url: String, completionHandler: @escaping (T?, Error?) -> ()) {
        fetch(from: url) { data, error in
            guard error == nil else {
                completionHandler(nil, error)
                return
            }
            
            guard let fixData = data as? T else {
                completionHandler(nil, FetchError.cannotCastToType)
                return
            }
            
            completionHandler(fixData, nil)
        }
    }
    
    func fetchData<T: FetchAutoParsable> (from url: String, completionHandler: @escaping (T?, Error?) -> ()) {
        fetch(from: url) { data, error in
            guard error == nil else {
                completionHandler(nil, error)
                return
            }
            
            completionHandler(T.parse(from: data!) as? T, nil)
        }
    }
    
    private func fetch (from url: String, completionHandler: @escaping(Data?, Error?) -> ()) {
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard error == nil else {
                completionHandler(nil, error)
                return
            }
            
            guard let data = data else {
                completionHandler(nil, FetchError.noData)
                return
            }
            
            completionHandler(data, nil)
        }).resume()
    }
}
