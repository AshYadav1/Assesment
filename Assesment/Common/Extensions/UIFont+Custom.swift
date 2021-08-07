//
//  UIFont+Custom.swift
//  Americana
//
//  Created by admin on 12/11/19.
//  Copyright © 2019 ambrish. All rights reserved.
//

import UIKit


/** UIFont extension which is used for assign the font to UILabel*/
extension UIFont {
    
    class func Muli_ExtraLight(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-ExtraLight", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_ExtraLightItalic(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-ExtraLightItalic", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_BoldLightItalic(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-BoldItalic", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_Black(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-Black", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }

    class func Muli_Medium(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-Medium", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_ExtraBold(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-ExtraBold", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_Bold(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-Bold", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_SemiBold(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-SemiBold", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
   
    
    class func Muli_Light(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-Light", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_Regular(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-Regular", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
    
    class func Muli_LightItalic(setsize: CGFloat)-> UIFont {
        let font = UIFont(name: "Muli-LightItalic", size: setsize)
        return font ?? UIFont.systemFont(ofSize: setsize)
    }
}
