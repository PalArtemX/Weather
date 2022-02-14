//
//  WelcomeView.swift
//  Weather
//
//  Created by Artem Paliutin on 12.02.2022.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            Text("Weather")
                .font(.title)
                .foregroundColor(.indigo)
            Spacer()
            HStack {
                Image(systemName: "cloud.drizzle")
                Image(systemName: "sun.max")
                Image(systemName: "cloud.snow")
                Image(systemName: "snowflake")
                Image(systemName: "cloud.bolt.rain")
                Image(systemName: "cloud.sun")
            }
            .symbolRenderingMode(.hierarchical)
            .font(.title)
            Spacer()
            LocationButton(.currentLocation) {
                locationManager.requestLocation()
                
            }
            .cornerRadius(10)
            .tint(.indigo.opacity(0.5))
        }
    }
}










struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(LocationManager())
    }
}
