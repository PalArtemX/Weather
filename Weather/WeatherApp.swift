//
//  WeatherApp.swift
//  Weather
//
//  Created by Artem Paliutin on 11.02.2022.
//

import SwiftUI

@main
struct WeatherApp: App {
    
    @StateObject var locationManager = LocationManager()
    @StateObject var weatherVM = WeatherViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationManager)
                .environmentObject(weatherVM)
        }
    }
}
