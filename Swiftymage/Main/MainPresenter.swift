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
    var view: ViperView?
    var interactor: Interactor
    var router: Router
    
    // first version
    init() {
        interactor = MainInteractor()
        router = MainRouter()
        interactor.presenter = self
    }
    
    // yes this multi-object handler passing is eeeeh...
    func fetchAnImage() {
        (interactor as? MainInteractor)?.fetchImage { [weak self] (image: UIImage?, error: Error?) in
            guard let safeImage = image, error != nil else {
                print("error while fetching image")
                print("error: \(error.debugDescription)")
                return
            }
            
            (self?.view as? MainView)?.display(image: safeImage)
        }
    }
}
