//
//  UIMageViewExtension.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import Kingfisher

extension UIImageView{
    
    /** Set the image*/
    func setImage(imageUrl: String, placeholder: UIImage? = UIImage.placeHolder){
        
        if let url = URL(string: imageUrl){
            self.kf.setImage(with: url, placeholder: placeholder, options: [.fromMemoryCacheOrRefresh])
        }else{
            self.image = placeholder
        }
    }
}
