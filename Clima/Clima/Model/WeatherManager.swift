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
        self.performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handle(data:responce:error:))
            task.resume()
        }
    }
    
    func handle(data: Data?, responce: URLResponse?, error: Error? ) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
