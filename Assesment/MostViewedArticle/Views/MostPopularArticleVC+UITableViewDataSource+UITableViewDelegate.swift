//
//  MostPopularArticleVC+UITableViewDataSource+UITableViewDelegate.swift
//  Assesment
//
//  Created by Admin on 06/08/21.
//

import Foundation
import UIKit

/**UITableView DataSource*/
extension MostPopularArticleVC: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let vm = viewModel else{ return 0 }
        return vm.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(with: MostPopularListCell.self, indexPath: indexPath)
        cell.prepareCellView(cellViewModel: viewModel?.getCellViewModel(index: indexPath))
        return cell
    }
}

/** UITableView Delegate*/
extension MostPopularArticleVC: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let vm = viewModel, let selectedData = vm.getSelectedData(index: indexPath) else{ return }
        let scene = MostViewedArticleDetailVC.instantiate(fromAppStoryboard: .Main)
        scene.prepareViewModel(vm: MostViewedArticleDetailViewModel.init(data: selectedData))
        navigationController?.pushViewController(scene, animated: true)
    }
}
