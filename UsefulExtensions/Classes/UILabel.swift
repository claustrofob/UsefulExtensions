//
//  UILabel.swift
//  dafi
//
//  Created by dev on 12.03.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import UIKit

public extension UILabel {
    func size(for width: CGFloat) -> CGSize {
        let sizeToFit = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        var size = self.sizeThatFits(sizeToFit)
        size.width = width
        return size
    }
}

