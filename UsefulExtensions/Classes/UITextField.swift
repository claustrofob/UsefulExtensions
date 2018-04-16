//
//  UITextField.swift
//  dafi
//
//  Created by dev on 16.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import UIKit

private var kAssociationKeyNextField: UInt8 = 0
public extension UITextField {
    var nextField: UITextField? {
        get {
            return objc_getAssociatedObject(self, &kAssociationKeyNextField) as? UITextField
        }
        set(newField) {
            objc_setAssociatedObject(self, &kAssociationKeyNextField, newField, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}
