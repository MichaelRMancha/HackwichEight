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
        let restaurantTwo = Restaurant(title: "Denny's", type: "American", coordinate:
            CLLocationCoordinate2D(latitude: 21.329635, longitude: -158.092297))
        mapView.addAnnotation(restaurantTwo)
        let restaurantThree = Restaurant(title: "Ruby Tuesday", type: "American", coordinate:
            CLLocationCoordinate2D(latitude: 21.329398, longitude: -158.091441))
        mapView.addAnnotation(restaurantThree)
        let restaurantFour = Restaurant(title: "Dunkin' Donuts", type: "Breakfast", coordinate: CLLocationCoordinate2D(latitude: 21.329421, longitude: -158.090827))
        mapView.addAnnotation(restaurantFour)
        let restaurantFive = Restaurant(title: "Kapolei Commons 12", type: "Popcorn", coordinate:
            CLLocationCoordinate2D(latitude: 21.330574, longitude: -158.094601))
        mapView.addAnnotation(restaurantFive)
        let restaurantSix = Restaurant(title: "Subway", type: "Sandwich", coordinate:
            CLLocationCoordinate2D(latitude: 21.331491, longitude: -158.091694))
        mapView.addAnnotation(restaurantSix)
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

