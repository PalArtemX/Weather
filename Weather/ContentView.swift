//
//  ContentView.swift
//  Weather
//
//  Created by Artem Paliutin on 11.02.2022.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    var weatherManager = WeatherManager()
    @State var weather: Weather?
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                
                if let weather = weather {
                    Text("Weather fetched")
                } else {
                    ProgressView()
                        .task {
                            do {
                                weather = try await weatherManager.getCurrentWeather(
                                    latitude: location.latitude,
                                    longitude: location.longitude)
                            } catch {
                                print("⚠️ Error getting weather: \(error)")
                            }
                        }
                }
                
            } else {
                if locationManager.isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                } else {
                    WelcomeView()
                }
            }
        }
        .background(Color.blue)
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LocationManager())
    }
}
