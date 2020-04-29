//
//  WeatherData.swift
//  Clima
//
//  Created by Roman Trekhlebov on 26.04.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: WeatherDataMain
    let weather: [WeatherArrayItem]
}

struct WeatherDataMain: Codable {
    let temp: Double
}

struct WeatherArrayItem: Codable {
    let description: String
    let id: Int
}
