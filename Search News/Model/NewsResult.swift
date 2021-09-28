//
//  NewsResult.swift
//  Search News
//
//  Created by Siva Rama Lingam S on 9/28/21.
//

import Foundation

struct NewsResult: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let source: Source
    let title: String
    let url: String
}

struct Source: Decodable {
    let name: String
}
