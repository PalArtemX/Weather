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
                .bold()
            Spacer()
            LocationButton(.currentLocation) {
                locationManager.requestLocation()
                
            }
            .cornerRadius(10)
            .tint(.indigo.opacity(0.8))
        }
    }
}










struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(LocationManager())
    }
}
