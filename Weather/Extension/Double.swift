//
//  Double.swift
//  Weather
//
//  Created by Artem Paliutin on 13.02.2022.
//

import Foundation


extension Double {
    
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
    
    func oneSignDouble() -> String {
        return String(format: "%.1f", self)
    }
}
