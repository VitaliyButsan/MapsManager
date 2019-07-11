//
//  Destination.swift
//  MapsManager
//
//  Created by vit on 11/07/2019.
//  Copyright © 2019 vit. All rights reserved.
//

import Foundation
import GoogleMaps

class Destination: NSObject {
    
    let name: String
    let location: CLLocationCoordinate2D
    let zoom: Float
    
    init(name: String, location: CLLocationCoordinate2D, zoom: Float = 18.0) {
        self.name = name
        self.location = location
        self.zoom = zoom
    }
    
    static let locations: [Destination] = [
        Destination(name: "Flagpole Plaza", location: CLLocationCoordinate2D(latitude: 40.690707, longitude: -74.045782)),
        Destination(name: "Sculpture Garden", location: CLLocationCoordinate2D(latitude: 40.690266, longitude: -74.044631)),
        Destination(name: "Near Monument", location: CLLocationCoordinate2D(latitude: 40.689168, longitude: -74.044603)),
        Destination(name: "Gift Shop", location: CLLocationCoordinate2D(latitude: 40.689847, longitude: -74.046308)),
        Destination(name: "Museum", location: CLLocationCoordinate2D(latitude: 40.690105, longitude: -74.046283))
    ]
}
