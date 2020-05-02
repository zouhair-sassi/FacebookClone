//
//  HomeBottomCellCollectionViewCell.swift
//  Facebook
//
//  Created by Zouhair Sassi on 4/27/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

class HomeBottomCellCollectionViewCell: UICollectionViewCell {

    var imageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.backgroundColor = nil
    }

    override var isSelected: Bool {
        didSet {
            imageView.tintColor = isHighlighted ? UIColor.lightGray : UIColor(red: 0.13, green: 0.48, blue: 0.94, alpha: 1.00)
        }
    }

    override var isHighlighted: Bool {
        didSet {
            imageView.tintColor = isHighlighted ? UIColor.lightGray : UIColor(red: 0.13, green: 0.48, blue: 0.94, alpha: 1.00)
        }
    }

    func initialize() {
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .lightGray
        self.contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.imageView = imageView

        let separator = UIView()
        separator.backgroundColor = UIColor(red: 0.13, green: 0.48, blue: 0.94, alpha: 1.00)
        //separator.translatesAutoresizingMaskIntoConstraints = false
        addSubview(separator)

        //separator.pinLeftToSuperview(0).pinTopToSuperview(0).pinRightToSuperview(0).setHeight(2).asView()
        imageView.pinLeftToSuperview(0).pinRightToSuperview(0).pinTopToSuperview(15).pinBottomToSuperview(15).asView()
    
    }
}
