//
//  UIColor+AppColor.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import UIKit

extension UIColor {

    /** Convenenice Initialiser to use for mention the color*/
    convenience init(r: Int, g: Int, b: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: a)
    }
}

/** Mention the color which were used in the app*/
extension UIColor{
    
    static var navBarColor: UIColor{
        return UIColor(r: 63, g:225, b:181)
    }
    static var whiteColor: UIColor{
        return UIColor.white
    }
    static var blackColor: UIColor{
        return UIColor.black
    }
    static var grayColor: UIColor{
        return UIColor(r: 108, g: 123, b: 139)
    }
}
