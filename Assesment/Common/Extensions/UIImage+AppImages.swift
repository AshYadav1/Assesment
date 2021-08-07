//
//  UIImage+AppImages.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import UIKit

/** Extension of UIIMage to mention the icons used in the App*/
extension UIImage{
    
    static var sideMenuIcon: UIImage?{
        return UIImage(named: "sideMenu")
    }
    
    static var moreIcon: UIImage?{
        return UIImage(named: "moreIcon")
    }
    
    static var calendarIcon: UIImage?{
        return UIImage(named: "calendarIcon")
    }
    
    static var rightArrow: UIImage?{
        return UIImage(named: "rightArrow")
    }
    
    static var placeHolder: UIImage?{
        return UIImage(named: "placeHolder")
    }
    
    static var backIcon: UIImage?{
        return UIImage(named: "backIcon")
    }
}
