//
//  ArtcileTitleCell.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import UIKit

class ArticleTitleCell: UITableViewCell {

    /**IBOutlets*/
    @IBOutlet weak var articleTitleLbl: UILabel!
    @IBOutlet weak var articleDecriptionLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupcellUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupcellUI(){
        
        articleTitleLbl.font = UIFont.Muli_SemiBold(setsize: AppFontSizes.articleTitleLargeSize)
        articleTitleLbl.textColor = UIColor.blackColor
        
        articleDecriptionLbl.font = UIFont.Muli_SemiBold(setsize: AppFontSizes.articleDescriptionLargeSize)
        articleDecriptionLbl.textColor = UIColor.grayColor
    }
    
    func prepareCellView(cellVM: ArticleTitleCellViewModel){
        articleTitleLbl.text = cellVM.getArticleTitle()
        articleDecriptionLbl.text = cellVM.getArticleDescription()
    }
}
