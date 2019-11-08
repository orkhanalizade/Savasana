//
//  UIButton.swift
//  Savasana
//
//  Created by Orkhan Alizada on 08.11.19.
//  Copyright © 2019 Orkhan Alizada. All rights reserved.
//

import UIKit

extension UIButton {
    /**
    Additional init method for UIButton.

    - parameters:
       - title: The UIButton title.
       - titleColor: The UIButton title color.
       - backgroundColor: The UIButton background color.
       - state: The UIButton state.
       - target: The UIButton target used to combine with action.
       - action: The UIButton action to perform on tap event.
       - font: The UIButton font. By default the font set to the system default font and the font size is set to 14.0.
    */
    convenience init(title: String, titleColor: UIColor, backgroundColor: UIColor, state: UIControl.State = .normal, font: UIFont = UIFont.systemFont(ofSize: 14.0), target: Any? = nil, action: Selector? = nil) {
        self.init(type: .system)

        self.setTitle(title, for: state)
        self.setTitleColor(titleColor, for: state)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font

        if let action = action {
            self.addTarget(target, action: action, for: .touchUpInside)
        }
    }

    /**
     Set UIButton title text font to the Asana Rebel default Brandon text.

     - parameters:
        - weight: The Brandon font weight (regular, medium, bold, etc.).
        - size: The Brandon font size, which is by default set to 14.0.
     */
    internal func setBrandonFont(fontWeight weight: UIFont.BrandonFontWeight, fontSize size: CGFloat = 14.0) {
        self.titleLabel?.font = UIFont.setBrandonFont(fontWeight: weight, fontSize: size)
    }

    /**
     Set UIButton background color to the Asana Rebel default green tint.
     */
    internal func setDefaultGreenColor() {
        self.backgroundColor = UIColor.aRGreenDark
    }
}
