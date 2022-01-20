//
//  UITableView+Ext.swift
//  GitHub Followers
//
//  Created by Denny on 18.01.2022.
//

import UIKit

// Useful extension
extension UITableView {
    
    func removeExceesCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
}
