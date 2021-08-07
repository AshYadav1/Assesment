//
//  MostPopularListCellViewModel.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

final class MostPopularListCellViewModel{
    
    private var cellData: MostViewedArticleList!
    
    required init(data: MostViewedArticleList){
        cellData = data
    }
    
    func getImageUrl() -> String{
        guard let media = cellData.media.first else{ return ""}
        guard let mediaMetaData = media.mediaMetadata.first else{ return ""}
        return mediaMetaData.url ?? ""
    }
    
    func getTitle() -> String{
        return cellData.title ?? ""
    }
    
    func getTitleDescription() -> String{
        return cellData.abstract ?? ""
    }
    
    func getPublishedDate() -> String{
        return cellData.publishedDate ?? ""
    }
    
    func getCellData() -> MostViewedArticleList{
        return cellData
    }
}
