//
//  RemoteMostViewedArticleRepository.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import Alamofire

class RemoteMostViewedArticleRepository: MostViewedArticleRepositoryProtocol{
    
    func getArticleList(section: String, period: String, success: @escaping (_ data: MostViewedArticleModel) -> Void, failure: @escaping (_ error: Error) -> Void) {
        
        MostPopularArticleRouter.getArticle(section: section, period: period).send(MostViewedArticleModel.self) { (result) in
            
            switch result{
             
            case .success(let data):
                success(data)
            case .failure(let error):
                failure(error)
            }
        }
    }
}
