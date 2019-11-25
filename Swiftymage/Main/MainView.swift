//
//  MainView.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 22..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import UIKit.UIImage
import Foundation

class MainView: ViperView {
    // MARK: - Properties
    
    var presenter: Presenter
    
    init () {
        presenter = MainPresenter()
    }
    
    // MARK: - Methods
    
    func display(image: UIImage) {
        print("It will start displaying from here.")
    }
    
}
