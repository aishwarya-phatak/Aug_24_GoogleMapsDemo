//
//  ViewController.swift
//  Aug_24_GoogleMapsDemo
//
//  Created by Vishal Jagtap on 11/11/24.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSMapViewDelegate {
    
    @IBOutlet weak var mapView: GMSMapView!
    var gmsMarker : GMSMarker?
    
    var mumbaiCoordinates = CLLocationCoordinate2D(
        latitude: 19.0760,
        longitude: 72.8777)
    
    var puneCoordinate = CLLocationCoordinate2D(
        latitude: 18.5204,
        longitude: 73.8567)
    
    var delhiCoordinate = CLLocationCoordinate2D(
        latitude: 28.61,
        longitude: 77.23)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        initializeMapSettings()
        initializeMarkerSettings()
        let cameraPosition = GMSCameraPosition(latitude: 19.0760,
                                               longitude: 72.8777,
                                               zoom: 20.0)
        mapView.camera = cameraPosition
    }
    
    func initializeMarkerSettings(){
        gmsMarker?.position = CLLocationCoordinate2D(latitude: 19.0760,
                                                     longitude: 72.8777)
        gmsMarker?.title = "Mumbai"
        gmsMarker?.isDraggable = true
        gmsMarker?.isTappable = true
        gmsMarker?.zIndex = 10
        gmsMarker?.rotation = 20.0
        gmsMarker?.opacity = 0.5
        gmsMarker?.snippet = "Mumbai City"
        gmsMarker?.map = mapView
    }
    
    func initializeMapSettings(){
        
        mapView.isBuildingsEnabled = true
        mapView.isIndoorEnabled = true
        mapView.isTrafficEnabled = true
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.rotateGestures = true
        mapView.settings.scrollGestures = true
        mapView.settings.tiltGestures = true
        mapView.settings.zoomGestures = true
        
        mapView.mapType = .normal
    }
    
}
