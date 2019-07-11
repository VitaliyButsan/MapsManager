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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GMSServices.provideAPIKey("AIzaSyBdw59KvnT7FB7I8qNomb2GbwBp-HiEHCI")
        setupStartPosition()
    }
    
    func setupStartPosition() {
        
        let camera = GMSCameraPosition.camera(withLatitude: 40.689910, longitude: -74.045095, zoom: 17)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        let baseLocation = CLLocationCoordinate2DMake(40.689910, -74.045095)
        let marker = GMSMarker(position: baseLocation)
        marker.title = "Liberty Island"
        marker.snippet = "Flagpole Plaza"
        marker.map = mapView
    }
    
    @IBAction func goButton(_ sender: UIBarButtonItem) {
        print("Go")
    }

}

