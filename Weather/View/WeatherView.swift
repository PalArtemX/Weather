//
//  WeatherView.swift
//  Weather
//
//  Created by Artem Paliutin on 13.02.2022.
//

import SwiftUI
import MapKit

struct WeatherView: View {
    let weather: Weather
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            
            VStack {
                Text(weather.name)
                
                Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                
                Text(weather.main.feels_like.roundDouble() + "°")
                
                Image(systemName: "sun.max")
                
                Text(weather.weather[0].main)
                
                
            }
            
        }
        .ignoresSafeArea()
    }
}










struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
