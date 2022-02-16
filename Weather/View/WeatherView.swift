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
        VStack(alignment: .leading) {
            // MARK: - Header
            VStack(alignment: .leading) {
                Text(weather.name)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                    .fontWeight(.light)
            }
            .padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
            .foregroundColor(.indigo)
            .padding()
            Spacer()
            
            // MARK: - Temp
            HStack {
                VStack {
                    switch weather.weather[0].main {
                    case "Clear":
                        Image(systemName: "sun.max")
                    case "Rain":
                        Image(systemName: "cloud.rain")
                    case "Snow":
                        Image(systemName: "cloud.snow")
                    case "Sun":
                        Image(systemName: "sun.max")
                    case "Fog":
                        Image(systemName: "cloud.fog")
                    case "Clouds":
                        Image(systemName: "cloud")
                    case "Bolt":
                        Image(systemName: "cloud.bolt")
                    default:
                        Image(systemName: "questionmark.circle")
                    }
                    
                    Text(weather.weather[0].main)
                        .font(.caption)
                }
                .font(.title)
                .symbolRenderingMode(.hierarchical)
                
                Text(weather.main.feels_like.roundDouble() + "°")
                    .fontWeight(.bold)
                    .font(.largeTitle)
            }
            .padding()
            
            Spacer()
            // MARK: - Weather now
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("Weather now")
                        .bold()
                        .padding(.bottom)
                    
                    HStack {
                        WeatherRowView(logo: "thermometer", name: "Min temp", value: (weather.main.temp_min.oneSignDouble() + "°"))
                        Spacer()
                        WeatherRowView(logo: "thermometer", name: "Max temp", value: (weather.main.temp_max.oneSignDouble() + "°"))
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
                .foregroundColor(.indigo)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .ignoresSafeArea()
        }
    }
}










struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            WeatherView(weather: previewWeather)
                .environmentObject(WeatherViewModel())
        }
    }
}
