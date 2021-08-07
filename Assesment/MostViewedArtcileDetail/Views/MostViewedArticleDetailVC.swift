//
//  MostViewedArticleDetailVC.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import UIKit
import SafariServices

class MostViewedArticleDetailVC: BaseVC {

    
    @IBOutlet weak var articleDetailTableView: UITableView!{
        didSet{
            registerNibs()
            articleDetailTableView.dataSource = self
            articleDetailTableView.delegate = self
        }
    }
    @IBOutlet weak var articleDetailBtn: UIButton!
    
    var viewModel: MostViewedArticleDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        // Do any additional setup after loading the view.
    }
    
    override func leftBarBtnTapped(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func articleDetailBtnTapped(_ sender: UIButton) {
        
        /** We Also can open the webview*/
        guard let articleUrl = viewModel.getArticleUrl() else{ return }
        let safariVC = SFSafariViewController(url: articleUrl)
        present(safariVC, animated: true, completion: nil)
    }
}

extension MostViewedArticleDetailVC {
    /** Prepare a viewModel*/
    func prepareViewModel(vm: MostViewedArticleDetailViewModel){
        viewModel = vm
    }
    
    /** Update the UI of View*/
    private func setupUI(){
        
        setupNavigationBar()
        articleDetailBtn.setTitle(viewModel.getDetailBtnTitle(), for: .normal)
        articleDetailBtn.setTitleColor(UIColor.whiteColor, for: .normal)
        articleDetailBtn.backgroundColor = UIColor.navBarColor
    }
    
    /** navigation Bar*/
    private func setupNavigationBar(){
        setNavigationBar(screenTitle : viewModel.getScreenTitle(), leftImage: UIImage.backIcon)
    }
    
    /** Register cell for tableview*/
    private func registerNibs(){
        
        articleDetailTableView.registerCell(with: ArticleTitleCell.self)
        articleDetailTableView.registerCell(with: ArticleImageViewCell.self)
        articleDetailTableView.registerCell(with: ArticlePublishedByCell.self)
    }
}
