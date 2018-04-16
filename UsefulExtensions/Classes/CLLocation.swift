//
//  CLLocation.swift
//  dafi
//
//  Created by dev on 16.02.2018.
//  Copyright © 2018 Muehlemann&Popp. All rights reserved.
//

import Foundation
import CoreLocation

public extension CLLocation {

    convenience init(location:CLLocationCoordinate2D) {
        self.init(latitude: location.latitude, longitude: location.longitude)
    }

    func formattedDistanceFromLocation(_ location:CLLocation) -> String {
        let distance = self.distance(from: location) / 1000
        return "\(distance.format(".2")) km"
    }

    func formattedDistanceFromLocationCoordinate(_ location:CLLocationCoordinate2D?) -> String {
        if let loc = location {
            return formattedDistanceFromLocation(CLLocation(location: loc))
        }

        return ""
    }
}
