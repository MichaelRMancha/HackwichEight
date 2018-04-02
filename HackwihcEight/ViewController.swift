//
//  ViewController.swift
//  HackwihcEight
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
   
    @IBOutlet var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.05)
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        centerMapLocation(location: initialLocation)
        
        //create a restaurant object and set all the arguments to each of the three parameters
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate:
            CLLocationCoordinate2D(latitude: 21.346478, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
    
    }

    func centerMapLocation (location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

