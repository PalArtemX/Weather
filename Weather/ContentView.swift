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
                Text("You coordinate : \(location.longitude), \(location.latitude)")
                    .padding()
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
