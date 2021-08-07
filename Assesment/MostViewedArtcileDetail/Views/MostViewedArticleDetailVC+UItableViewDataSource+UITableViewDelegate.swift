//
//  MostViewedArticleDetailVC+UItableViewDataSource+UITableViewDelegate.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import UIKit

extension MostViewedArticleDetailVC: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        
        case 0:
               
            let cell = tableView.dequeueCell(with: ArticleTitleCell.self, indexPath: indexPath)
            cell.prepareCellView(cellVM: viewModel.getArticleCellViewModel())
            return cell
        case 1:
            let cell = tableView.dequeueCell(with: ArticleImageViewCell.self, indexPath: indexPath)
            cell.prepareCellView(cellVM: viewModel.getArticleImageCellViewModel())
            return cell
        default:
            let cell = tableView.dequeueCell(with: ArticlePublishedByCell.self, indexPath: indexPath)
            cell.prepareCellView(vm: viewModel.getPublisherCellViewModel())
            return cell
        }
    }
}

extension MostViewedArticleDetailVC: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 1{
            return (viewModel?.isHaveMetaData() ?? false) ? UITableView.automaticDimension : CGFloat.leastNormalMagnitude
        }
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
