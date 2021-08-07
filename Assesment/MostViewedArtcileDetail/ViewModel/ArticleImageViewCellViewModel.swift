//
//  ArticleImageViewCellViewModel.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

final class ArticleImageViewCellViewModel{
    
    private var caption: String?
    private var mediaData: MediaMetaData!
    
    required init(mediadata: MediaMetaData, caption: String){
        self.mediaData = mediadata
        self.caption = caption
    }
    
    func isHaveCaption() -> Bool{
        
        guard let cap = caption else{ return false}
        return !cap.isEmpty
    }
    
    func getImageUrl() -> String?{
        
        guard let imgUrl = mediaData.url else{ return nil}
        return imgUrl
    }
    
    func getCaption() -> String{
        return caption ?? ""
    }
    
    func getMediaData() -> MediaMetaData{
        return mediaData
    }
}
