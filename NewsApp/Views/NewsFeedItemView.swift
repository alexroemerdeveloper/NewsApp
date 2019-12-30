//
//  NewsFeedItem.swift
//  NewsApp
//
//  Created by Alexander Römer on 30.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import SwiftUI

struct NewsFeedItemView: View {
    var article: NewsListItem
    
    var body: some View {
        HStack {
            UrlImageView(urlString: article.urlToImage)
            VStack(alignment: .leading) {
                Text("\(article.title)")
                    .font(.headline)
                Text("\(article.author ?? "No Author")")
                    .font(.subheadline)
            }
        }
    }
}


