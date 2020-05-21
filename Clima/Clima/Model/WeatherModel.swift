//
//  WeatherModel.swift
//  Clima
//
//  Created by Roman Trekhlebov on 29.04.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
            
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
        
    }
    
    func getConditionName(weatherId: Int) -> String {
        var returnValue = ""
        switch weatherId {
            
        case 200...299:
            returnValue = "cloud.bolt.rain"
        case 300...399:
            returnValue = "cloud.drizzle"
        case 500...599:
            returnValue = "cloud.heavyrain"
        case 600...699:
            returnValue = "cloud.snow"
        case 700...799:
            returnValue = "tornado"
        case 800:
            returnValue = "sun.max"
        case 800...899:
            returnValue = "cloud"
        default:
            returnValue = "cloud"
        }
        return returnValue
    }
}
