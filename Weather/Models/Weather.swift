//
//  Weather.swift
//  Weather
//
//  Created by Artem Paliutin on 11.02.2022.
//

import Foundation
import CoreLocation


struct Weather: Decodable {
    var coord: Coordinates
    var weather: [Weather]
    var main: Main
    var name: String
    var wind: Wind

    struct Coordinates: Decodable {
        var lon: Double
        var lat: Double
    }

    struct Weather: Decodable {
        var id: Double
        var main: String
        var description: String
        var icon: String
    }

    struct Main: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }
    
    struct Wind: Decodable {
        var speed: Double
        var deg: Double
    }
}

//extension Weather.Main {
//    var feelsLike: Double { return feels_like }
//    var tempMin: Double { return temp_min }
//    var tempMax: Double { return temp_max }
//}
//// MARK: - URL
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



