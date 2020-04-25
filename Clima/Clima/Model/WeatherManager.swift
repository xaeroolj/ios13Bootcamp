//
//  WeatherManager.swift
//  Clima
//
//  Created by Roman Trekhlebov on 25.04.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURl = "https://api.openweathermap.org/data/2.5/weather?appid=\(API_KEY)&units=metric"
//    q=London&
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURl)&q=\(cityName)"
        
        print(urlString)
    }
}
