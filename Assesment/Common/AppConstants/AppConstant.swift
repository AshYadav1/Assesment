//
//  AppConstant.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import UIKit

class AppConstants{
    
    /** Get the API key from configuration*/
    class var apiKey: String{
        guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String else{
            return ""
        }
        return apiKey
    }
}

