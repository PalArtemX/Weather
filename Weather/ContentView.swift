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
    
    var body: some View {
        ZStack {
            
            if let location = locationManager.location {
                Text("Locarion: \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    ProgressView()
                }
            }
            
            VStack {
                Spacer()
                LocationButton(.shareCurrentLocation) {
                    locationManager.requestLocation()
                }
                .cornerRadius(10)
                .symbolVariant(.fill)
                .foregroundColor(.white)
                
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LocationManager())
    }
}
