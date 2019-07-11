//
//  ViewController.swift
//  MapsManager
//
//  Created by vit on 11/07/2019.
//  Copyright © 2019 vit. All rights reserved.
//

import UIKit
import GoogleMaps

class MainMapViewController: UIViewController {

    var mapView: GMSMapView?
    var currentDestination: Destination?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GMSServices.provideAPIKey("AIzaSyBdw59KvnT7FB7I8qNomb2GbwBp-HiEHCI")
        setupStartPosition()
    }
    
    func setupStartPosition() {
        
        let baseLocation = CLLocationCoordinate2DMake(40.689928, -74.047560)
        let camera = GMSCameraPosition.camera(withLatitude: baseLocation.latitude, longitude: baseLocation.longitude, zoom: 18.0)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        let marker = GMSMarker(position: baseLocation)
        marker.title = "Liberty Island"
        marker.snippet = "Flagpole Plaza"
        marker.map = mapView
    }
    
    @IBAction func goButton(_ sender: UIBarButtonItem) {
        
        if currentDestination == nil {
            
            currentDestination = Destination.locations.first
            
            mapView?.camera = GMSCameraPosition.camera(withTarget: currentDestination!.location, zoom: currentDestination!.zoom)
            
            let marker = GMSMarker(position: currentDestination!.location)
            marker.title = "..."
            marker.snippet = ",,,"
            marker.map = mapView
            
        } else {
            
            if let index = Destination.locations.firstIndex(of: currentDestination!) {
                
                if index + 1 < Destination.locations.count {
                    currentDestination = Destination.locations[index + 1]
                } else {
                    currentDestination = Destination.locations.first
                }
                
                mapView?.camera = GMSCameraPosition.camera(withTarget: currentDestination!.location, zoom: currentDestination!.zoom)
                
                let marker = GMSMarker(position: currentDestination!.location)
                marker.title = "..."
                marker.snippet = ",,,"
                marker.map = mapView
            } else {
                currentDestination = nil
            }
        }
        
    }

}

