//
//  MostViewedArticleDetailViewModel.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

final class MostViewedArticleDetailViewModel {
    
    /**Proporties*/
    private var articleData: MostViewedArticleList!
    
    required init(data: MostViewedArticleList) {
        articleData = data
    }
    
    func getScreenTitle() -> String{
        return articleData.type ?? ""
    }
    
    func getDetailBtnTitle() -> String{
        return "Article Detail"
    }
    
    func getArticleCellViewModel() -> ArticleTitleCellViewModel{
        return ArticleTitleCellViewModel(title: articleData.title ?? "", description: articleData.abstract ?? "")
    }
    
    func getPublisherCellViewModel() -> ArticlePublishedByCellViewModel?{
        return ArticlePublishedByCellViewModel(publishedBy: articleData.byline ?? "", publishedDate: articleData.publishedDate ?? "")
    }
    
    func getArticleImageCellViewModel() -> ArticleImageViewCellViewModel?{
        guard let media = mediaData(), let metaData = getMediaMetaData() else {
            return nil
        }
        return ArticleImageViewCellViewModel(mediadata: metaData, caption: media.caption ?? "")
    }
    
    private func mediaData() -> Media?{
        return articleData.media.first
    }
    
    func isHaveMetaData() -> Bool{
        return getMediaMetaData() != nil
    }
    
    private func getMediaMetaData() -> MediaMetaData?{
        guard let media = mediaData() else{ return nil}
        return media.mediaMetadata.max()
    }
    
    func numberOfRows() -> Int{
        return 3
    }
    
    func getArticleUrl() -> URL?{
        guard let data = articleData, let urlString = data.url else{ return nil}
        return URL(string: urlString)
    }
    
    func getArticleData() -> MostViewedArticleList{
        return articleData
    }
}
