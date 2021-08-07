//
//  UIViewExtension.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import UIKit

extension UIView{

    /** Methods use for round the view corners*/
    func roundCorners(radius: CGFloat) {
         self.layer.cornerRadius = radius
         self.clipsToBounds = true
     }
}
