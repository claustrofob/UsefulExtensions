//
//  UserDefaults.swift
//  dafi
//
//  Created by dev on 16.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import Foundation

public extension UserDefaults {
    var isTesting:Bool {
        return self.bool(forKey: "FASTLANE_SNAPSHOT")
    }
}
