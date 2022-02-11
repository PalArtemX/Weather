//
//  Weather.swift
//  Weather
//
//  Created by Artem Paliutin on 11.02.2022.
//

import Foundation


// MARK: - Weather
struct Weather: Codable {
    let coord: Coord
    let weather: [WeatherElement]
    let base: String
    let main: Main
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone, id: Int
    let name: String
    let cod: Int
    
    
    // MARK: - Clouds
    struct Clouds: Codable {
        let all: Int
    }

    // MARK: - Coord
    struct Coord: Codable {
        let lon, lat: Double
    }

    // MARK: - Main
    struct Main: Codable {
        let temp, feelsLike, tempMin, tempMax: Double
        let pressure, humidity: Int

        enum CodingKeys: String, CodingKey {
            case temp
            case feelsLike = "feels_like"
            case tempMin = "temp_min"
            case tempMax = "temp_max"
            case pressure, humidity
        }
    }

    // MARK: - Sys
    struct Sys: Codable {
        let type, id: Int
        let message: Double
        let country: String
        let sunrise, sunset: Int
    }

    // MARK: - WeatherElement
    struct WeatherElement: Codable {
        let id: Int
        let main, weatherDescription, icon: String

        enum CodingKeys: String, CodingKey {
            case id, main
            case weatherDescription = "description"
            case icon
        }
    }

    // MARK: - Wind
    struct Wind: Codable {
        let speed: Double
        let deg: Int
    }
}


// MARK: - URL
// api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid={API key}

// MARK: - JSON Api
/*

{
"coord": {
"lon": -122.08,
"lat": 37.39
},
"weather": [
{
"id": 800,
"main": "Clear",
"description": "clear sky",
"icon": "01d"
}
],
"base": "stations",
"main": {
"temp": 282.55,
"feels_like": 281.86,
"temp_min": 280.37,
"temp_max": 284.26,
"pressure": 1023,
"humidity": 100
},
"visibility": 16093,
"wind": {
"speed": 1.5,
"deg": 350
},
"clouds": {
"all": 1
},
"dt": 1560350645,
"sys": {
"type": 1,
"id": 5122,
"message": 0.0139,
"country": "US",
"sunrise": 1560343627,
"sunset": 1560396563
},
"timezone": -25200,
"id": 420006353,
"name": "Mountain View",
"cod": 200
}
 
*/



