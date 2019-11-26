//
//  MainPresenter.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 22..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import UIKit
import Foundation

class MainPresenter: Presenter {
    var interactor: Interactor
    
    // first version
    init() {
        interactor = MainInteractor()
    }
    
    // yes this multi-object handler passing is eeeeh...
    func fetchAnImage(handler: @escaping (UIImage?, Error?) -> ()) {
        (interactor as? MainInteractor)?.fetchImage(handler: handler)
    }
}
