//
//  Extensions.swift
//  dafi
//
//  Created by dev on 15.01.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import UIKit

public extension Int {
    func format(_ f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

public extension Double {
    func format(_ f: String) -> String {
        return String(format: "%\(f)f", self)
    }

    func roundToPlaces(_ places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

public extension Float {
    func format(_ f: String) -> String {
        return String(format: "%\(f)f", self)
    }

    func roundToPlaces(_ places:Int) -> Float {
        let divisor = pow(10.0, Float(places))
        return (self * divisor).rounded() / divisor
    }
}

public extension String {
    //get the count of visible glyphs (.characters.count may give a wrong result for emoji)
    var composedCount : Int {
        var count = 0
        enumerateSubstrings(in: startIndex..<endIndex, options: .byComposedCharacterSequences) {_,_,_,_ in count += 1}
        return count
    }
}

public func delay(_ delay:Double, closure:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(
        deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
}

public extension Encodable {
    func asDictionary() -> [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
