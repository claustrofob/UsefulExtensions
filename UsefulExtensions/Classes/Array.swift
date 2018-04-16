//
//  Array.swift
//  dafi
//
//  Created by dev on 16.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import Foundation

public extension Array where Element: Equatable {
    mutating func removeObject(_ object: Element) {
        if let index = self.index(of: object) {
            self.remove(at: index)
        }
    }

    mutating func removeObjectsInArray(_ array: [Element]) {
        for object in array {
            self.removeObject(object)
        }
    }
}
