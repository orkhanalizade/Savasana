//
//  UIFont.swift
//  Savasana
//
//  Created by Orkhan Alizada on 08.11.19.
//  Copyright © 2019 Orkhan Alizada. All rights reserved.
//

import UIKit

extension UIFont {
    /**
     Enum for selecting the Brandon font weight which contains ALL possible cases.
     */
    internal enum BrandonFontWeight: String {
        case black = "BrandonText-Black"
        case blackItalic = "BrandonText-BlackItalic"
        case regular = "BrandonText-Regular"
        case regularItalic = "BrandonText-RegularItalic"
        case medium = "BrandonText-Medium"
        case mediumItalic = "BrandonText-MediumItalic"
        case bold = "BrandonText-Bold"
        case boldItalic = "BrandonText-BoldItalic"
        case thin = "BrandonText-Thin"

    }

    /**
     Set the label font to the Asana Rebel default Brandon text.
     - parameters:
        - weight: Set the weight of the font.
        - size: Set the font size of the font. By default it is set to 14.0.

      - returns:
      Brandon font or if it fails — system default font.
     */
    class func setBrandonFont(fontWeight weight: BrandonFontWeight, fontSize size: CGFloat) -> UIFont {
        let font = UIFont(name: weight.rawValue, size: size)

        return font ?? UIFont.systemFont(ofSize: size)
    }
}
