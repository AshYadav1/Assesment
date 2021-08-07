//
//  MostViewedArticleRepository.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

protocol MostViewedArticleRepositoryProtocol: BaseRepositoryProtocol {
    
    func getArticleList(section: String, period: String, success: @escaping (_ data: MostViewedArticleModel) -> Void, failure: @escaping (_ error: Error) -> Void)
}


class MostViewedArticleRepository: MostViewedArticleRepositoryProtocol{
    
    func getArticleList(section: String, period: String, success: @escaping (_ data: MostViewedArticleModel) -> Void, failure: @escaping (_ error: Error) -> Void){

        RemoteMostViewedArticleRepository().getArticleList(section: section,
                                                           period: period,
                                                           success: success,
                                                           failure: failure)
    }
}


