//
//  LocationData.swift
//  
//
//  Created by Zahir Saiyed on 10/27/22.
//

import Foundation
import CoreLocation


// Create a CLLocationManager and assign a delegate
let locationManager = CLLocationManager()
locationManager.delegate = self

// Request a user’s location once
locationManager.requestLocation()
