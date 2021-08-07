//
//  MostViewedViewModel.swift
//  Assesment
//
//  Created by Admin on 06/08/21.
//

import Foundation

final class MostPopularArticleViewModel {
    
    private var repository: MostViewedArticleRepositoryProtocol!
    var articleData = Bindable<MostViewedArticleModel>()
    
    required init(repo: MostViewedArticleRepositoryProtocol) {
        repository = repo
    }

    func getScreenTitle() -> String{
        return "NY Times Most Popular"
    }
    
    /**Table view rows count*/
    func numberOfRows() -> Int{
        return articleData.value?.results.count ?? 0
    }
    
    /** Tableview cellView Model*/
    func getCellViewModel(index: IndexPath) -> MostPopularListCellViewModel?{
        guard let data = articleData.value else{ return nil}
        return MostPopularListCellViewModel(data: data.results[index.row])
    }
    
    /** Get the list of the Most viewed Articles*/
    func getMostArtcileList(){
        
        repository.getArticleList(section: "all-sections", period: "7") {[weak self](data) in
            guard let self = self else{ return }
            self.articleData.value = data
        } failure: {(error) in
            self.articleData.error = error
        }
    }
    
    func getRepository() -> MostViewedArticleRepositoryProtocol{
        return repository
    }
    
    func getSelectedData(index: IndexPath) -> MostViewedArticleList?{
        guard let value = articleData.value else{ return nil}
        return value.results[index.row]
    }
}
