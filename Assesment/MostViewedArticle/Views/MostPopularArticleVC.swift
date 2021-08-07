//
//  MostViewedArticleVC.swift
//  Assesment
//
//  Created by Admin on 06/08/21.
//

import UIKit

class MostPopularArticleVC: BaseVC {

    /**IBOutlets*/
    @IBOutlet weak var mostPopularTableView: UITableView!{
        didSet{
            mostPopularTableView.dataSource = self
            mostPopularTableView.delegate = self
        }
    }
    
    /**Proporties*/
    var viewModel: MostPopularArticleViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

/** Methods*/
extension MostPopularArticleVC {
    
    func prepareViewModel(vm: MostPopularArticleViewModel){
        viewModel = vm
        
        viewModel?.articleData.bind{[weak self] (_) in
            guard let self = self else{ return }
            DispatchQueue.main.async {
                self.mostPopularTableView.reloadData()
            }
        }
        
        viewModel?.articleData.bindError(observer: {[weak self](error) in
            guard let _ = self else{ return }
            print(error?.localizedDescription ?? "")
        })
    }
    
    /** Update the UI of View*/
    private func setupUI(){
        
        viewModel?.getMostArtcileList()
        setupNavigationBar()
    }
    
    /** navigation Bar*/
    private func setupNavigationBar(){
        setNavigationBar(screenTitle : viewModel?.getScreenTitle() ?? "", leftImage: UIImage.sideMenuIcon, rightImage: UIImage.moreIcon)
    }
}
