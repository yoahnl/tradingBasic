//
//  newsService.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 26/12/2020.
//

import Foundation
import SwiftHTTP
import SwiftyJSON
import Promises

class NewsService
{
    
    func getNews() -> Promise<[Article]>
    {
        let endpoint = "http://newsapi.org/v2/top-headlines?country=fr&category=business&apiKey=3ce96f9063b44e68940243816492bd22"
        
        return Promise<[Article]>(on: .main) { fulfill, reject in
            HTTP.GET(endpoint) {
                response in
                var articles: [Article] = Array()
                let json = response.text!
                if let data = json.data(using: .utf8) {
                    if let json = try? JSON(data: data) {
                        
                        for item in json["articles"].arrayValue {
                            let source: Source = Source(id: item["source"]["id"].stringValue, name: item["source"]["name"].stringValue)
                            let author: String = item["author"].stringValue
                            let title: String = item["title"].stringValue
                            let description = item["description"].stringValue
                            let url = item["url"].stringValue
                            let urlToImage = item["urlToImage"].stringValue
                            let publishedAt = item["publishedAt"].stringValue
                            let content = item["content"].stringValue
                            let article: Article = Article(source: source, author: author, title: title, articleDescription: description, url: url, urlToImage: urlToImage, publishedAt: publishedAt, content: content)
                            articles.append(article)
                        }
                        fulfill(articles)
                    }
                }

            }
        }


    }
}
