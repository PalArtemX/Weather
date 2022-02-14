//
//  MapView.swift
//  Weather
//
//  Created by Artem Paliutin on 14.02.2022.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct MapView: View {
    
    @EnvironmentObject var weatherVM: WeatherViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $weatherVM.region)
                .ignoresSafeArea()
        }
    }
}








struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .environmentObject(WeatherViewModel())
    }
}
