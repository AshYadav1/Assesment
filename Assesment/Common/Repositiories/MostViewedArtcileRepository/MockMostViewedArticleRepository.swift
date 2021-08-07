//
//  MockMostViewedArticleRepository.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation


class MockMostViewedArticleRepository: MostViewedArticleRepositoryProtocol{
    
    func getArticleList(section: String, period: String, success: @escaping (_ data: MostViewedArticleModel) -> Void, failure: @escaping (_ error: Error) -> Void){
      
        guard let path = Bundle.main.path(forResource: "content", ofType: "json") else{
            failure(NSError(domain: "Didn't get the JSON from API", code: 400, userInfo: [:]))
            return }
        
        do{
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let articleObj = try decoder.decode(MostViewedArticleModel.self, from: data)
            success(articleObj)
        }catch(let error){
            failure(error)
        }
    }
}
