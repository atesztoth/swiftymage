//
//  MainRouter.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 22..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import Foundation

class MainRouter: Router {
    // MARK: Properties
    var view: ViperView = ContentView()
    weak var presenter: Presenter?
}
