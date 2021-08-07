//
//  BaseVC.swift
//  Assesment
//
//  Created by Admin on 06/08/21.
//

import Foundation
import UIKit

/** we use a common methods for viewcontroller here which we want to call from viewcontroller or we can overide the methods.*/
class BaseVC: UIViewController {
    
    /** Base class viewDid Load*/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    /** set the navigation Bar update*/
    func setNavigationBar(screenTitle : String, leftImage: UIImage? = nil, rightImage: UIImage? = nil){
        
        self.navigationController?.navigationBar.barTintColor = UIColor.navBarColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.whiteColor]
        title = screenTitle
        
        if let img = leftImage{
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(leftBarBtnTapped(_:)))
            self.navigationItem.leftBarButtonItem?.tintColor = UIColor.whiteColor
        }
        
        if let img = rightImage{
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(rightBarBtnTapped(_:)))
            self.navigationItem.rightBarButtonItem?.tintColor = UIColor.whiteColor
        }
    }
    
    @objc func leftBarBtnTapped(_ sender : UIBarButtonItem){
        /** Override these methods to use it in the class*/
    }
    
    @objc func rightBarBtnTapped(_ sender : UIBarButtonItem){
        /** Override these methods to use it in the class*/
    }
}
