//
//  NewsFeedListItem.swift
//  NewsApp
//
//  Created by Alexander Römer on 30.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import Foundation

class NewsApiResponse: Codable {
    var status   : String
    var articles : [NewsListItem]?
}

class NewsListItem: Identifiable, Codable {
    var uuid        = UUID()
    var author      : String?
    var title       : String
    var urlToImage  : String?
    
    enum CodingKeys: String, CodingKey {
        case author, title, urlToImage
    }
}
