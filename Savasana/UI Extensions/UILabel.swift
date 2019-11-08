//
//  UILabel.swift
//  Savasana
//
//  Created by Orkhan Alizada on 08.11.19.
//  Copyright © 2019 Orkhan Alizada. All rights reserved.
//

import UIKit

extension UILabel {
    /**
     Additional init method for UILabel

     - parameters:
        - text: The UILabel text
        - textColor: The UILabel font color
        - numberOfLines: The UILabel number of lines. Set 0 for infinite lines
        - textAlignment: The UILabel text alignment
        - fontSize: The UILabel font size
        - font: The UILabel font. If the font size was set previously the new font's size will be overwritten. By default the font set to the system default font and the font size is set to 14.0
     */
    convenience public init(text: String? = nil, textColor: UIColor = .black, numberOfLines: Int = 1, textAlignment: NSTextAlignment = .left, fontSize: CGFloat = 14.0, font: UIFont? = UIFont.systemFont(ofSize: 14.0)) {
        self.init()

        self.text = text
        self.textColor = textColor
        self.numberOfLines = numberOfLines
        self.textAlignment = textAlignment

        self.font = font?.withSize(fontSize)
    }

    /**
     Enum for selecting the Brandon font weight which contains ALL possible cases
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
     Set the label font to the Asana Rebel default Brandon text
     - parameters:
        - fontWight: Set the weight of the font
        - fontSize: Set the font size of the font. By default it is set to 14.0
     */
    internal func brandonFont(fontWeight weight: BrandonFontWeight, fontSize size: CGFloat? = nil) {
        self.font = UIFont(name: weight.rawValue, size: size ?? 14.0)
    }
}
