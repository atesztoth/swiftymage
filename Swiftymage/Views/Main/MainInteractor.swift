//
//  MainInteractor.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 22..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import UIKit.UIImage
import Foundation

class MainInteractor: Interactor {
    
    // MARK: - Properties
    weak var presenter: Presenter?
    
    var core: Core {
        return Core.sharedInstance
    }
    
    // MARK: - Methods
    
    func fetchImage(handler: @escaping (_ data: UIImage?, _ error: Error?) -> ()) {
        core.networkFetcher.fetchData(from: "https://cataas.com/cat", completionHandler: handler)
    }
    
    
}
