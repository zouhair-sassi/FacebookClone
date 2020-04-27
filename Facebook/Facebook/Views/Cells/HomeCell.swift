//
//  HomeCell.swift
//  Facebook
//
//  Created by Zouhair Sassi on 4/25/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {

    let userIcon : UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let userNameLabel : UILabel = {
        let label = UILabel()
        label.text = "Zouhair sassi"
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let datePubLabel : UILabel = {
        let label = UILabel()
        label.text = "22 avr.à 21:24"
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let pubTextLabel : UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let pubImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {

    }

    func addSubviews() {
        self.addSubview(userIcon)
        self.addSubview(userNameLabel)
        self.addSubview(datePubLabel)
        self.addSubview(pubTextLabel)
        self.addSubview(pubImageView)
        userIcon.pinLeftToSuperview(10).pinTopToSuperview(15).setWidth(50).setHeight(50).asView()
        userNameLabel.pinLeftToSuperview(70).pinTopToSuperview(10).setWidth(180).setHeight(30).asView()
        datePubLabel.pinLeftToSuperview(70).pinTopToSuperview(25).setWidth(180).setHeight(50).asView()
        pubTextLabel.pinLeftToSuperview(10).pinTopToSuperview(63).setWidth(250).setHeight(30).asView()
        pubImageView.pinLeftToSuperview(10).pinTopToSuperview(98).pinRightToSuperview(10).pinBottomToSuperview(10).asView()
    }


}
