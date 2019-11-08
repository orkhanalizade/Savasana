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

    /**
     Add shadow to the view.

     - parameters:
        - opacity: The opacity value of the added shadow.
        - radius: The radius value of the added shadow.
        - offset: The offset value of the added shadow.
        - color: The color of the added shadow, which is set to black by default.
     */
    internal func addShadow(opacity: Float = 0.0, radius: CGFloat = 0.0, offset: CGSize = .zero, color: UIColor = .black) {
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = radius
        self.layer.shadowOffset = offset
        self.layer.shadowColor = color.cgColor
    }
}
