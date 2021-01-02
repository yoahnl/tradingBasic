//
//  constant.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 26/12/2020.
//

import Foundation

struct Constants {
    
    //The API's base URL
    static let baseUrl = "http://newsapi.org/v2/top-headlines?country=fr&category=business&apiKey=3ce96f9063b44e68940243816492bd22"
    
    //The parameters (Queries) that we're gonna use
    struct Parameters {
        static let userId = "userId"
    }
    
    //The header fields
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    //The content type (JSON)
    enum ContentType: String {
        case json = "application/json"
    }
}
