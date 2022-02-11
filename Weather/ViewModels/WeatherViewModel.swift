//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Artem Paliutin on 11.02.2022.
//

import Foundation


class WeatherViewModel: ObservableObject {
    
    @Published var weather: [Weather] = []
    
    
}
