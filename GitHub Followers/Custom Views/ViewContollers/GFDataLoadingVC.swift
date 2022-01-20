//
//  GFDataLoadingVC.swift
//  GitHub Followers
//
//  Created by Denny on 14.01.2022.
//

import UIKit

class GFDataLoadingVC: UIViewController {
    
    var containerView: UIView!

    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
        
        let activityIndecator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndecator)
        
        activityIndecator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activityIndecator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activityIndecator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        activityIndecator.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
}
