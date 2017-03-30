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
                return UIColor(red: 0.54, green: 0.54, blue: 0.93, alpha: 1.0)
            case "Red":
                return UIColor(red: 1.0, green: 0.26, blue: 0.26, alpha: 1.0)
            case "Yellow":
                return UIColor(red: 1.0, green: 0.98, blue: 0.26, alpha: 1.0)
            case "Orange":
                return UIColor(red: 0.97, green: 0.51, blue: 0.21, alpha: 1.0)
            case "Purple":
                return UIColor(red: 0.63, green: 0.2, blue: 0.79, alpha: 1.0)
            default:
                return UIColor.white
            }
        }
        return UIColor.white
    }
    class func buttonColor() -> UIColor {
        let defaults = UserDefaults.standard
        if let color = defaults.object(forKey: "ButtonColor") as? String {
            switch color {
            case "White":
                return UIColor.white
            case "Grey":
                return UIColor.gray
            case "Blue":
                return UIColor(red: 0.54, green: 0.54, blue: 0.93, alpha: 1.0)
            case "Purple":
                return UIColor(red: 0.63, green: 0.2, blue: 0.79, alpha: 1.0)
            default:
                return UIColor.magenta
            }
        }
        return UIColor.magenta
    }
}
