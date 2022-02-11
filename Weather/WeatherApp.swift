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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationManager)
        }
    }
}
