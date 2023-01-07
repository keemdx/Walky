//
//  ViewController.swift
//  Walky
//
//  Created by Dohyun Kim on 2022/12/20.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 37.566508,126.977945 at zoom level 16.
        let camera = GMSCameraPosition.camera(withLatitude: 37.566508, longitude: 126.977945, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 37.566508, longitude: 126.977945)
        marker.title = "Seoul"
        marker.snippet = "South Korea"
        marker.map = mapView
    }
}

