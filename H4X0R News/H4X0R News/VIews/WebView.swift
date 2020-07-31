//
//  WebView.swift
//  H4X0R News
//
//  Created by Roman Trekhlebov on 31.07.2020.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: urlString!) else { return }
        let urlRequest = URLRequest(url: url)
        uiView.load(urlRequest)
    }
}
