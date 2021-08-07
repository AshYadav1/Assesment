//
//  ArticlePublishedByCell.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import UIKit

class ArticlePublishedByCell: UITableViewCell {

    /** IBOutlets*/
    @IBOutlet weak var publisherName: UILabel!
    @IBOutlet weak var publishedDate: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCellUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupCellUI(){
        
        publisherName.font = UIFont.Muli_Bold(setsize: AppFontSizes.publisherNameSize)
        publisherName.textColor = UIColor.blackColor
        
        publishedDate.font = UIFont.Muli_Regular(setsize: AppFontSizes.publisherNameSize)
        publishedDate.textColor = UIColor.blackColor
    }
    
    func prepareCellView(vm: ArticlePublishedByCellViewModel?){
        guard let viewmodel = vm else{ return }
        publisherName.text = viewmodel.getArticlePublisher()
        publishedDate.text = viewmodel.getArtcilePublishingDate()
    }
}
