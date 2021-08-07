//
//  HandleResponse.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import Alamofire


typealias HandleResponse<T: CodableInit> = (Result<T>) -> Void

protocol HandleAlamoResponse {
    /// Handles request response, never called anywhere but APIRequestHandler
    ///
    /// - Parameters:
    ///   - response: response from network request, for now alamofire Data response
    ///   - completion: completing processing the json response, and delivering it in the completion handler
    func handleResponse<T: CodableInit>(_ response: DataResponse<Data>, completion: CallResponse<T>)
}

extension HandleAlamoResponse {
    
    func handleResponse<T: CodableInit>(_ response: DataResponse<Data>, completion: CallResponse<T>) {
        
        if let responseData = response.data{
            let _ = String(data: responseData, encoding: String.Encoding.utf8)
//            print("Response: \(JSONString ?? "")")
        }
    }
}
