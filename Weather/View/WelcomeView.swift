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
            VStack {
                Text("Welcome")
                    .font(.headline)
            }
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(10)
            .tint(.green)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}










struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(LocationManager())
    }
}
