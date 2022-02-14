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
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 1, longitude: 1), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    
    // MARK: - FUNCTIONS
    // MARK: - coordinateCenter
    func coordinateCenter(lat: CLLocationDegrees, lon: CLLocationDegrees) {
        region.center.longitude = lon
        region.center.latitude = lat
    }
}
