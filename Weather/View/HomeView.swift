//
//  HomeView.swift
//  Weather
//
//  Created by Artem Paliutin on 14.02.2022.
//

import SwiftUI
import CoreLocationUI

struct HomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    @EnvironmentObject var weatherVM: WeatherViewModel
    
    var weatherManager = WeatherManager()
    
    var body: some View {
        ZStack {
            // MARK: - MapView
            MapView()
            VStack {
                if let location = locationManager.location {
                    if let weather = weatherVM.weather {
                        ZStack {
                            // MARK: - WeatherView
                            WeatherView(weather: weather)
                        }
                    } else {
                        ProgressView()
                            .task {
                                do {
                                    weatherVM.weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                                    weatherVM.coordinateRegionCenter(latitude: location.latitude, longitude: location.longitude)
                                } catch {
                                    print("⚠️ Error getting weather: \(error)")
                                }
                            }
                    }
                } else {
                    if locationManager.isLoading {
                        ProgressView()
                    } else {
                        // MARK: - WelcomeView
                        WelcomeView()
                    }
                }
            }
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(LocationManager())
            .environmentObject(WeatherViewModel())
    }
}
