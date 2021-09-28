//
//  SearchNewsWebServices.swift
//  Search News
//
//  Created by Siva Rama Lingam S (BLR GSS) on 9/28/21.
//

import Foundation

class SearchNewsWebServices {
    
    let baseAddress = "https://newsapi.org/v2/"
    let newsApiKey = "0cf790498275413a9247f8b94b3843fd"
    let searchNewsUri1 = "everything?q="
    let searchNewsUri2 = "&from=2021-09-28&sortBy=popularity&apiKey="
    
    func getArticles(searchString: String, completion: @escaping ([Article]?) -> ()) {
        
        let url = URL(string: "\(baseAddress)\(searchNewsUri1)\(searchString)\(searchNewsUri2)")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                completion(nil)
            } else if let data = data {
                
                let newsResults = try? JSONDecoder().decode(NewsResult.self, from: data)
                
                if let newsResults = newsResults {
                    completion(newsResults.articles)
                }
            }
        }.resume()
    }
}
