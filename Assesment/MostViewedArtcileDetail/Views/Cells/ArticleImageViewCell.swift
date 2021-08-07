//
//  ArticleimageViewCell.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import UIKit

class ArticleImageViewCell: UITableViewCell {

    /** IBoutlets*/
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var captionLbl: UILabel!
    
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
        
        captionLbl.font = UIFont.Muli_Light(setsize: AppFontSizes.cellTitleSize)
        captionLbl.textColor = UIColor.grayColor
    }
    
    func prepareCellView(cellVM: ArticleImageViewCellViewModel?){
        guard let vm = cellVM else{ return }
        cellImageView.setImage(imageUrl: vm.getImageUrl() ?? "")
        captionLbl.text = vm.getCaption()
        captionLbl.isHidden = !vm.isHaveCaption()
    }
}
