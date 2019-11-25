//
//  Viper.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 24..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import Foundation

protocol ViperView: class {
    var presenter: Presenter { get }
}

protocol Presenter: class {
    var router: Router { get } // weak
    var interactor: Interactor { get }
    var view: ViperView? { get set } // weak
}

protocol Interactor: class {
    var core: Core { get }
    var presenter: Presenter? { get set } // weak
}

protocol Router: class {
    var presenter: Presenter? { get } // weak
    var view: ViperView { get }
}
