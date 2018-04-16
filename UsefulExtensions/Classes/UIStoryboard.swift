//
//  UIStoryboard.swift
//  dafi
//
//  Created by dev on 16.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    class func mainStoryboard() -> UIStoryboard! {

        guard let mainStoryboardName = Bundle.main.infoDictionary?["UIMainStoryboardFile"] as? String else {
            assertionFailure("No UIMainStoryboardFile found in main bundle")
            return nil
        }

        return UIStoryboard(name: mainStoryboardName, bundle: Bundle.main)
    }
}
