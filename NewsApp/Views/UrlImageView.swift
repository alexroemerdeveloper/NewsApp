//
//  UrlImageView.swift
//  NewsApp
//
//  Created by Alexander Römer on 30.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import SwiftUI

struct UrlImageView: View {
    
    @ObservedObject var urlImageModel: UrlImageModel
    
    init(urlString: String?) {
        urlImageModel = UrlImageModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? UrlImageView.defaultImage!)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .frame(width: 100, height: 100)
    }
    
    static var defaultImage = UIImage(named: "gb")
}

struct UrlImageView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageView(urlString: nil)
    }
}
