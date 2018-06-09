//
//  TripsMapViewController.swift
//  Trip Gallery App
//
//  Created by Avi Perera on 9/6/18.
//  Copyright © 2018 Avishka Perera. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class TripsMapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        tripsMap.delegate = self
        tripsMap.showsUserLocation = true
        if Trips.trips.count <= 0 { Trips.loadTrips()}
        for trip in Trips.trips{
            tripsMap.addAnnotation(trip)
            
        }

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tripsMap: MKMapView!
    let locationManager = CLLocationManager()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
