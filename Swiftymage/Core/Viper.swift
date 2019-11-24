//
//  Viper.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 24..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import Foundation

protocol Interactor { // weak ref to the presenter
    var core: Core { get }
    var presenter: Presenter? { get }
}

protocol Presenter { // hold router and interactor strongly
    var router: Router { get }
    var interactor: Interactor { get }
}

protocol View {
    var router: Router { get }
    var presenter: Presenter { get }
}

protocol Router { // weak ref to the view and presenter
    var presenter: Presenter? { get }
    var view: View? { get }
}
