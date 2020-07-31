//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Roman Trekhlebov on 31.07.2020.
//

import Foundation

class NetworkManager {
    func fetchData() {
        guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, responce, error) in
            if error == nil {
                if let safeData = data {
                    let decoder = JSONDecoder()
                    do {
                        try decoder.decode(Result.self, from: safeData)
                    }catch {
                        print(error)
                    }
                    
                }
                
            }
            
        }
        task.resume()
         
    }
}
