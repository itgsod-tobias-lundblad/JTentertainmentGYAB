//
//  loadOptions.swift
//  Qup
//
//  Created by Jovan Cvetic on 2017-03-24.
//  Copyright © 2017 Quizz. All rights reserved.
//

import Foundation
import UIKit
class LoadOptions {
    class func backgroundColor() -> UIColor {
        let defaults = UserDefaults.standard
        if let color = defaults.object(forKey: "backgroundColor") as? String {
            switch color {
            case "Blue":
                return UIColor.blue
            case "Red":
                return UIColor.red
            default:
                return UIColor.white
            }
        }
        return UIColor.white
    }
}
