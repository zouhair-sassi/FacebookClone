//
//  BaseCellCollectionViewCell.swift
//  Facebook
//
//  Created by Zouhair Sassi on 5/2/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {

    var view = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func initialize() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 150))
        view.backgroundColor = .red
        addSubview(view)
        self.view = view
    }

}
