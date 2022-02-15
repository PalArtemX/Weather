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
    @State private var weatherMain = "cloud"
    
    var body: some View {
        VStack(spacing: 100) {
            // MARK: - Header
            VStack(alignment: .leading) {
                Text(weather.name)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                    .fontWeight(.light)
            }
            .foregroundColor(.indigo)
            Spacer()
            
            // MARK: - Temp
            HStack {
                VStack {
                    Image(systemName: "sun.max")
                        .font(.title)
                        .foregroundColor(.indigo)
                        .padding(.horizontal)
                    Text(weather.weather[0].main)
                        .foregroundColor(.indigo)
                }
                Text(weather.main.feels_like.roundDouble() + "°")
                    .fontWeight(.bold)
                    .foregroundColor(.indigo)
                    .font(.largeTitle)
                    .padding(.horizontal)
            }
            
            Spacer()
            // MARK: - Weather now
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    Text("Weather now")
                        .bold()
                        .padding(.bottom)
                    
                    HStack {
                        WeatherRowView(logo: "thermometer", name: "Min temp", value: (weather.main.temp_min.roundDouble() + "°"))
                        Spacer()
                        WeatherRowView(logo: "thermometer", name: "Max temp", value: (weather.main.temp_max.roundDouble() + "°"))
                    }
                    
                    HStack {
                        WeatherRowView(logo: "wind", name: "Wind speed", value: (weather.wind.speed.oneSignDouble() + "m/s"))
                        Spacer()
                        WeatherRowView(logo: "humidity", name: "Humidity", value: (weather.main.humidity.roundDouble() + "%"))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom)
                .foregroundColor(Color.white)
                .background(.indigo)
                .cornerRadius(20)
            }
            .ignoresSafeArea()
        }
    }
}










struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
