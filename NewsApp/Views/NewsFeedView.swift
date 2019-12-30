//
//  ContentView.swift
//  NewsApp
//
//  Created by Alexander Römer on 30.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import SwiftUI

struct NewsFeedView: View {
    @ObservedObject var newsFeed = NewsFeed()
    
    var body: some View {
        NavigationView {
            List(newsFeed) { (article: NewsListItem) in
                NewsFeedItemView(article: article)
                    .onAppear {
                        self.newsFeed.loadMoreArticles(currentItem: article)
                }
            }
            .navigationBarTitle("News")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView()
    }
}
