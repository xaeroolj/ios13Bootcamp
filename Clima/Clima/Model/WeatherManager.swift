//
//  WeatherManager.swift
//  Clima
//
//  Created by Roman Trekhlebov on 25.04.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(weather: WeatherModel)
}

struct WeatherManager {
    let weatherURl = "https://api.openweathermap.org/data/2.5/weather?appid=\(API_KEY)&units=metric"
    //    q=London&
    var delegate: WeatherManagerDelegate?
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURl)&q=\(cityName)"
        
        self.performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, responce, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    if let weather = self.parseJSON(weatherData: safeData) {
                        self.delegate?.didUpdateWeather(weather: weather)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            //            print(decodedData.weather.first?.id ?? "No data")
            let id = decodedData.weather[0].id
            let name = decodedData.name
            let temp = decodedData.main.temp
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            return weather
            
        } catch {
            print(error)
            return nil
        }
    }
    
    
    
    
}
