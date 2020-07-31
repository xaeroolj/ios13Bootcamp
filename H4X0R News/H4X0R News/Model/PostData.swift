//
//  PostData.swift
//  H4X0R News
//
//  Created by Roman Trekhlebov on 31.07.2020.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let points: Int
    let title: String
    let url: String?
    let objectID: String
}
