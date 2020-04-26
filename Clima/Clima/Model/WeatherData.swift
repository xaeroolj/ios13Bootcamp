//
//  WeatherData.swift
//  Clima
//
//  Created by Roman Trekhlebov on 26.04.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: WeatherDataMain
    let weather: [WeatherArrayItem]
}

struct WeatherDataMain: Decodable {
    let temp: Double
}

struct WeatherArrayItem: Decodable {
    let description: String
}
