//
//  GFFollowerItemVC.swift
//  GitHub Followers
//
//  Created by Denny on 12.01.2022.
//

import UIKit

protocol GFFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowwers(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GFFollowerItemVCDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoVIewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(color: .systemGreen, title: "Get Followers", systemImageName: "person.3")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowwers(for: user)
    }
}
