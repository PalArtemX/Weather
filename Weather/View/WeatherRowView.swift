//
//  WeatherRowView.swift
//  Weather
//
//  Created by Artem Paliutin on 15.02.2022.
//

import SwiftUI

struct WeatherRowView: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack {
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title2)
            }
        }
    }
}










struct WeatherRowView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRowView(logo: "thermometer", name: "Feels like", value: "8°")
    }
}
