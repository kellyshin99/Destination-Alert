//
//  SetAlertViewController.swift
//  LocationAlert
//
//  Created by Kelly Shin on 8/4/15.
//  Copyright (c) 2015 KellyShin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class InfoViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var address: UITextView!
    @IBOutlet weak var contact: UITextView!
    var locationManager: CLLocationManager!
    
    @IBAction func cancel(sender: AnyObject?) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        address.text = SharedData.locationAddress
        contact.text = SharedData.currentUserName
//        if (CLLocationManager.locationServicesEnabled()) {
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyBest
//            locationManager.startUpdatingLocation()
//        }
//        mapView.showsUserLocation = true
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
//        locationManager.monitoredRegions
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "unwindToMain" {
//            if let vc = segue.sourceViewController as? MainViewController {
//                if let storedLocation = vc.location {
//                    var circle = MKCircle(centerCoordinate: storedLocation, radius: 60)
//                    mapView.addOverlay(circle)
//                }
//            }
//        }
//    }
//    
//    func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
//        var circleRenderer = MKCircleRenderer(overlay: overlay)
//        circleRenderer.lineWidth = 2.0
//        circleRenderer.strokeColor = UIColor.purpleColor()
//        circleRenderer.fillColor = UIColor.purpleColor().colorWithAlphaComponent(0.4)
//        
//        return circleRenderer
//    }
//    
//    func locationManager(manager: CLLocationManager!, didEnterRegion region: CLRegion!) {
//        if region is CLCircularRegion {
//            SharedData.sendText()
//            for region in locationManager.monitoredRegions {
//                if let circularRegion = region as? CLCircularRegion {
//                    if circularRegion.identifier == "geofence" {
//                        locationManager.stopMonitoringForRegion(circularRegion)
//                    }
//                }
//            }
//        }
//    }

    
}