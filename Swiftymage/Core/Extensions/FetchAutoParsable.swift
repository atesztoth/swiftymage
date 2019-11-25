//
//  FetchAutoParsable.swift
//  Swiftymage
//
//  Created by Attila Tóth on 2019. 11. 22..
//  Copyright © 2019. Attila Tóth. All rights reserved.
//

import UIKit
import Foundation

extension UIImage: FetchAutoParsable {   
    typealias T = UIImage
    
    static func parse(from: Data) -> UIImage? {
        return UIImage(data: from)
    }
}
