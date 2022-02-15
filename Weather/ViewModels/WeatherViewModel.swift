//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Artem Paliutin on 11.02.2022.
//

import Foundation
import MapKit

class WeatherViewModel: ObservableObject {
    
    @Published var weather: Weather?
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.338910, longitude: -122.009061), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    // MARK: - FUNCTIONS
    // MARK: - coordinateCenter
    func coordinateCenter(lat: CLLocationDegrees, lon: CLLocationDegrees) {
        region.center.longitude = lon
        region.center.latitude = lat
    }
}
