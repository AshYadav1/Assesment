//
//  UITableViewExtension.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation
import UIKit

extension UITableView {
    ///Dequeue Table View Cell
    func dequeueCell <T: UITableViewCell> (with identifier: T.Type, indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: "\(identifier.self)", for: indexPath) as! T
    }

    ///Register Cell Nib
    func registerCell(with identifier: UITableViewCell.Type)  {
        self.register(UINib(nibName: "\(identifier.self)", bundle: nil), forCellReuseIdentifier: "\(identifier.self)")
    }
}
