//
//  ViewController.swift
//  nav
//
//  Created by Sebastian Hette on 31.01.2017.


import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBAction func showMeWhere(_ sender: Any)
    {
        //Defining destination
        // 기장 연화리 35.228482, 129.226177
        let latitude:CLLocationDegrees = 35.228482
        let longitude:CLLocationDegrees = 129.226177
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "기장 연화리"
        mapItem.openInMaps(launchOptions: options)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

