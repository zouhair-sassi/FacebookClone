//
//  HomeCell.swift
//  Facebook
//
//  Created by Zouhair Sassi on 4/25/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource {


    let baseCellID = "baseCellID"
    var homeController: MainViewController?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func initialize() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: frame.size.width - 20, height: 200)
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        collectionView.register(BaseCell.self, forCellWithReuseIdentifier: baseCellID)
        collectionView.backgroundColor = .white
        addSubview(collectionView)
        collectionView.pinTopToSuperview(50).pinRightToSuperview(0).pinLeftToSuperview(0).setHeight(frame.size.height).asView()
    }

     func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //print("11111211")
        //homeController?.cellDidScroll(scrollView: scrollView)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 5
     }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : BaseCell = collectionView.dequeueReusableCell(withReuseIdentifier: baseCellID, for: indexPath) as! BaseCell
        cell.backgroundColor = .blue
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: frame.size.width, height: 200)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}
