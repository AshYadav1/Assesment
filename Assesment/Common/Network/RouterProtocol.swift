//
//  RouterProtocol.swift
//  Assesment
//
//  Created by Admin on 06/08/21.
//

import Foundation
import Alamofire

/** Base Router Protocol for all the routers used in the App.*/
protocol URLRequestBuilder: URLRequestConvertible, APIRequestHandler {
    
    var mainURL: URL { get }
    var requestURL: URL { get }
    // MARK: - Path
    var path: ServerPaths { get }
    
    var headers: HTTPHeaders { get }
    // MARK: - Parameters
    var parameters: Parameters? { get }
    
    // MARK: - Methods
    var method: HTTPMethod { get }
    
    var encoding: ParameterEncoding { get }
    
    var urlRequest: URLRequest { get }
    
}

extension URLRequestBuilder {
    
    var mainURL: URL {
        return URL(string: "http://api.nytimes.com/")!
    }
    
    var requestURL: URL {
        return mainURL.appendingPathComponent(path.rawValue)
    }
        
    var path: ServerPaths {
        return .blankString
    }
    
    var headers: HTTPHeaders {
        return HTTPHeaders()
    }
    
    var defaultParams: Parameters {
        return Parameters()
    }
    
    var encoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    var urlRequest: URLRequest {
        var request = URLRequest(url: requestURL)
        request.httpMethod = method.rawValue
        headers.forEach{ request.addValue($1, forHTTPHeaderField: $0) }
        return request
    }

    func asURLRequest() throws -> URLRequest {
        return try encoding.encode(urlRequest, with: parameters)
    }
    
    var parameters: Parameters{
        return Parameters()
    }
}
enum ServerPaths: String {
    case blankString = ""
    case mostPopularArticle = "svc/mostpopular/v2/mostviewed/"
}
