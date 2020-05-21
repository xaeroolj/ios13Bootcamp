//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func rateRecived(_ rate: String)
    func didFailWithError(_ error: Error)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = API_KEY
    
    var delegate: CoinManagerDelegate?
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)/?apikey=\(apiKey)"
        performRequest(with: urlString)
    }
    
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: data)
            let rate = decodedData.rate
            return rate
        } catch {
            print("Decode Error: \(error)")
            delegate?.didFailWithError(error)
            return nil
        }
    }
    
    func performRequest(with urlString: String) {
        guard let url = URL(string: urlString) else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, responce, error) in
            if error != nil {
                print("Have error on request")
                self.delegate?.didFailWithError(error!)
            } else {
//                let responceString = String(data: data!, encoding: .utf8)
//                print(responceString!)
                if let rate = self.parseJSON(data!) {
                    let rateString = String(format: "%.2f", rate)
                    print("Parsed Rate = \(rateString)")
                    self.delegate?.rateRecived(rateString)
                }
                
                
            }
        }
        task.resume()
    }
    
}
