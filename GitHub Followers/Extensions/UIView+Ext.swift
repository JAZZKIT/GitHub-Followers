//
//  UIView+Ext.swift
//  GitHub Followers
//
//  Created by Denny on 14.01.2022.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
