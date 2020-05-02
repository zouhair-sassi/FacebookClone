//
//  HomeHeader.swift
//  Facebook
//
//  Created by Zouhair Sassi on 4/26/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

class HomeHeaderView: UIView {

    let fbLogoImgView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "fb_logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let searchButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "search"), for: .normal)
        button.contentMode = .scaleAspectFit
        button.layer.cornerRadius = 16
        button.backgroundColor = .init(white: 0.9, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let messengerButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "messenger"), for: .normal)
        button.contentMode = .scaleAspectFit
        button.layer.cornerRadius = 16
        button.backgroundColor = .init(white: 0.9, alpha: 1)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubviews() {
        self.addSubview(fbLogoImgView)
        self.addSubview(searchButton)
        self.addSubview(messengerButton)
        
        fbLogoImgView.pinLeftToSuperview(0).pinTopToSuperview(0).setWidth(120).setHeight(50).asView()
        searchButton.pinLeftToSuperview(300).pinTopToSuperview(5).setWidth(32).setHeight(32).asView()
        messengerButton.pinLeftToSuperview(340).pinTopToSuperview(5).setWidth(32).setHeight(32).asView()
    }
}


