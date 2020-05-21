//
//  CoinData.swift
//  ByteCoin
//
//  Created by Roman Trekhlebov on 19.05.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Codable {
    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
        
    
//    {
//      "time": "2020-05-18T13:08:00.0279290Z",
//      "asset_id_base": "BTC",
//      "asset_id_quote": "USD",
//      "rate": 9670.692983076395357962165684
//    }
}
