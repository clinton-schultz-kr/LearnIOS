//
//  News.swift
//  LearnIOS
//
//  Created by Clinton on 6/27/22.
//

import Foundation

struct NewsEnvelope: Decodable {
    let status: String
    let totalResults: Int
    let articles: [News]
}

struct News: Decodable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
}
