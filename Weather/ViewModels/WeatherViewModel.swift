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
    
    var weatherManager = WeatherManager()
    
    func coordinateRegionCenter(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        region.center.longitude = longitude
        region.center.latitude = latitude
    }
}
