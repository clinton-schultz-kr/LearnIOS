//
//  NewsViewModel.swift
//  LearnIOS
//
//  Created by Clinton on 6/28/22.
//

import Foundation

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknown"
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var url: String {
        return news.url ?? ""
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://i.kym-cdn.com/entries/icons/original/000/030/060/cover3.jpg"
    }
}
