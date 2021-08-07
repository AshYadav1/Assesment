//
//  ArticleTitleCellViewModel.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

final class ArticleTitleCellViewModel {
    
    private var title: String?
    private var description: String?
    
    required init(title: String, description: String){
        self.title = title
        self.description = description
    }
    
    func getArticleTitle() -> String{
        return title ?? ""
    }
    
    func getArticleDescription() -> String{
        return description ?? ""
    }
}
