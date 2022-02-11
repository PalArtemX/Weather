//
//  WeatherManager.swift
//  Weather
//
//  Created by Artem Paliutin on 11.02.2022.
//

import Foundation
import CoreLocation


class WeatherManager {
    
    let keyApi = "35e4c40e4887e5bbce93f9ed95e84d3d"
    let units = "metric"
    
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> Weather  {
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(keyApi)&units=\(units)") else { fatalError("⚠️ Missing URL") }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("⚠️ Error fetching weather data") }
        
        let decodedData = try JSONDecoder().decode(Weather.self, from: data)
        
        // return Model (Weather)
        return decodedData
    }
}

// URL: api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}
