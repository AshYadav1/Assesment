//
//  ApiRequestHandler.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import Alamofire

typealias CallResponse<T> = ((Result<T>) -> Void)?

protocol APIRequestHandler: HandleAlamoResponse {
    
    func send<T: CodableInit>(_ decoder: T.Type, completion: CallResponse<T>)
}

extension APIRequestHandler where Self: URLRequestBuilder {
    
    func send<T: CodableInit>(_ decoder: T.Type, completion: CallResponse<T>) {
        
        request(self).validate().responseData {(response) in
            self.handleResponse(response, completion: completion)
            
        }.responseJSON { (response) in
            
            switch response.result{
            
            case .success(_):
                if let responseData = response.data{
                    do{
                        let modules = try T(data: responseData)
                        completion?(Result<T>.success(modules))
                    }catch(let error){
                        completion?(Result<T>.failure(error))
                    }
                }else{
                    let info = [NSLocalizedDescriptionKey: "Something went wrong"]
                    let err = NSError(domain: "Something went wrong", code: 450, userInfo: info)
                    completion?(Result<T>.failure(err))
                }
            case .failure(let error):
                completion?(Result<T>.failure(error))
            }
        }
    }
}
