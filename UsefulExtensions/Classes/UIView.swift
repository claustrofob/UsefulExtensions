//
//  UIView.swift
//  dafi
//
//  Created by dev on 16.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import UIKit

public extension UIView {
    func sizeForWidth(width: CGFloat) -> CGSize {
        let sizeToFit = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        return sizeThatFits(sizeToFit)
    }
}
