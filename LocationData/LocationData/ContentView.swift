//
//  ContentView.swift
//  LocationData
//
//  Created by Zahir Saiyed on 10/27/22.
//  https://www.hackingwithswift.com/100/swiftui/78

import SwiftUI
import CoreLocation

class LocationFetcher: NSObject, CLLocationManagerDelegate {
		let manager = CLLocationManager()
		var lastKnownLocation: CLLocationCoordinate2D?

		override init() {
				super.init()
				manager.delegate = self
		}

		func start() {
				manager.requestWhenInUseAuthorization()
				manager.startUpdatingLocation()
		}

		func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
				lastKnownLocation = locations.first?.coordinate
		}
}

struct ContentView: View {
		let locationFetcher = LocationFetcher()

		var body: some View {
				VStack {
						Button("Start Tracking Location") {
								self.locationFetcher.start()
						}

						Button("Read Location") {
								if let location = self.locationFetcher.lastKnownLocation {
										print("Your location is \(location)")
								} else {
										print("Your location is unknown")
								}
						}
				}
		}
}
