//
//  UIViewController.swift
//  dafi
//
//  Created by dev on 16.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import UIKit

public extension UIViewController {
    class func createNavigationController() -> UINavigationController {
        return UINavigationController(rootViewController: self.init())
    }
}
