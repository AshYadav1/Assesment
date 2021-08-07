//
//  ArticlePublishedByCellViewModel.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

final class ArticlePublishedByCellViewModel{
    
    private var publisher: String?
    private var publishingDate: String?
    
    required init(publishedBy: String, publishedDate: String){
        self.publisher = publishedBy
        self.publishingDate = publishedDate
    }
    
    func isHavePublisher() -> String?{
        return publisher
    }
    
    func getArticlePublisher() -> String{
        return "Published By:  " + (publisher ?? "")
    }
    
    func getArtcilePublishingDate() -> String{
        return "Published Date:  " + (publishingDate ?? "")
    }
}
