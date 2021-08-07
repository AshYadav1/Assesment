//
//  MostPopularListCell.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import UIKit

class MostPopularListCell: UITableViewCell {

    /**IBOutlets*/
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var arrowImageView: UIImageView!
    @IBOutlet weak var cellTitleLbl: UILabel!
    @IBOutlet weak var cellDescriptionLbl: UILabel!
    @IBOutlet weak var sepratorView: UIView!
    @IBOutlet weak var calendarIconView: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCellUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepareCellView(cellViewModel: MostPopularListCellViewModel?){
        guard let vm = cellViewModel else{ return }
        cellImageView.setImage(imageUrl: vm.getImageUrl())
        cellTitleLbl.text = cellViewModel?.getTitle()
        cellDescriptionLbl.text = cellViewModel?.getTitleDescription()
        dateLbl.text = cellViewModel?.getPublishedDate()
    }

    private func setUpCellUI(){
        
        cellTitleLbl.font = UIFont.Muli_SemiBold(setsize: AppFontSizes.cellTitleSize)
        cellTitleLbl.textColor = UIColor.blackColor
        
        cellDescriptionLbl.font = UIFont.Muli_SemiBold(setsize: AppFontSizes.cellDescriptionSize)
        cellDescriptionLbl.textColor = UIColor.grayColor
        
        dateLbl.font = UIFont.Muli_Regular(setsize: AppFontSizes.cellDescriptionSize)
        dateLbl.textColor = UIColor.grayColor
        
        sepratorView.backgroundColor = UIColor.grayColor
        cellImageView.roundCorners(radius: cellImageView.frame.height / 2)
        
        calendarIconView.image = UIImage.calendarIcon
        arrowImageView.image = UIImage.rightArrow
    }
}
