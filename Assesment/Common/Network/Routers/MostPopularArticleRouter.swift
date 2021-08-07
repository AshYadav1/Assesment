//
//  MostPopularArticleRouter.swift
//  Assesment
//
//  Created by Admin on 06/08/21.
//

import Foundation
import Alamofire

enum MostPopularArticleRouter: URLRequestBuilder{
        
    case getArticle(section: String, period: String)
    
    /** Path*/
    internal var mainURL: URL{
        return  URL(string: "http://api.nytimes.com/")!
    }
    
    internal var requestURL: URL{
        
        switch self{
        
        case .getArticle(let section, let period):
            let urlString = mainURL.absoluteString + ServerPaths.mostPopularArticle.rawValue + section + "/" + period + ".json"
            return URL(string: urlString)!
        }
    }
    
    internal var parameters: Parameters?{
        var params = Parameters()
        params["api-key"] = AppConstants.apiKey
        return params
    }
    
    internal var method: HTTPMethod{
        return .get
    }
}
