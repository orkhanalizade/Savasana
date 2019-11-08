//
//  UIColor.swift
//  Savasana
//
//  Created by Orkhan Alizada on 08.11.19.
//  Copyright © 2019 Orkhan Alizada. All rights reserved.
//

import UIKit

extension UIColor {
    /**
     Shortcut for adding colors in code. Does not require division to /255.0.

     - parameters:
        - red: Red channel value.
        - green: Green channel value.
        - blue: Blue channel value.

     - returns:
     Standard UIColor value.
     */
    @nonobjc public class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
    }

    @nonobjc class var aRGreenDark: UIColor {
        return UIColor.rgb(red: 44.0, green: 188.0, blue: 121.0)
    }

    @nonobjc class var aRRedLight: UIColor {
        return UIColor.rgb(red: 1.0, green: 90.0, blue: 95.0)
    }

    @nonobjc class var aRRedDark: UIColor {
      return UIColor.rgb(red: 232.0, green: 73.0, blue: 74.0)
    }

    @nonobjc class var aRTextPrimaryDark: UIColor {
      return UIColor(white: 1.0, alpha: 1.0)
    }

    @nonobjc class var aRTextSecondaryLight: UIColor {
      return UIColor(white: 142.0 / 255.0, alpha: 1.0)
    }

    @nonobjc class var aRTextTertiaryLight: UIColor {
      return UIColor.rgb(red: 211.0, green: 211.0, blue: 214.0)
    }

    @nonobjc class var aRTextSecondaryDark: UIColor {
      return UIColor.rgb(red: 197.0, green: 197.0, blue: 205.0)
    }

    @nonobjc class var aRTextTertiaryDark: UIColor {
      return UIColor.rgb(red: 156.0, green: 156.0, blue: 159.0)
    }

    @nonobjc class var darkMint: UIColor {
      return UIColor.rgb(red: 65.0, green: 205.0, blue: 140.0)
    }

    @nonobjc class var brownGrey: UIColor {
      return UIColor(white: 155.0 / 255.0, alpha: 1.0)
    }

    @nonobjc class var black0: UIColor {
      return UIColor(white: 0.0, alpha: 0.0)
    }

    @nonobjc class var black: UIColor {
      return UIColor(white: 45.0 / 255.0, alpha: 1.0)
    }
}
