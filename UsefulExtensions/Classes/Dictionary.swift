//
//  Dictionary.swift
//  dafi
//
//  Created by dev on 10.04.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import Foundation

public extension Dictionary where Value: Equatable {
    func allKeys(forValue val: Value) -> [Key] {
        return self.filter { $1 == val }.map { $0.0 }
    }
}
