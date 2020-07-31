//
//  DetailView.swift
//  H4X0R News
//
//  Created by Roman Trekhlebov on 31.07.2020.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "Https://google.com")
    }
}



