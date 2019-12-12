//
//  Viper.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 24..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import Foundation

protocol ViperView {
    var presenter: Presenter { get }
}

// Adopting to a one way data flow here

protocol Presenter: class {
    // var router: Router { get set } // weak
    var interactor: Interactor { get }
    // var view: ViperView? { get set } // weak
}

protocol Interactor: class {
    var core: Core { get }
    // var presenter: Presenter? { get set } // weak
}

protocol Router {
    var presenter: Presenter? { get } // weak
    var view: ViperView { get set }
}
