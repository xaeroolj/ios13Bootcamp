//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Roman Trekhlebov on 31.07.2020.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, responce, error) in
            if error == nil {
                if let safeData = data {
                    let decoder = JSONDecoder()
                    do {
                        let results = try decoder.decode(Result.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                    }catch {
                        print(error)
                    }
                    
                }
                
            }
            
        }
        task.resume()
         
    }
}
