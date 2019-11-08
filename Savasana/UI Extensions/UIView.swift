//
//  UIView.swift
//  Savasana
//
//  Created by Orkhan Alizada on 08.11.19.
//  Copyright © 2019 Orkhan Alizada. All rights reserved.
//

import UIKit

extension UIView {
    /**
     Add corner radius to the view.

     - parameters:
        - value: The value of the corner radius.
     */
    internal func addCornerRadius(_ value: CGFloat) {
        self.layer.cornerRadius = value
        self.layer.masksToBounds = true
    }

    /**
     Add border to the view.

     - parameters:
        - width: The width of the added border.
        - color: The color of the added border.
     */
    internal func addBorder(boderWidth width: CGFloat, borderColor color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
