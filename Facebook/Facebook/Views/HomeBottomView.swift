//
//  HomeBottomView.swift
//  Facebook
//
//  Created by Zouhair Sassi on 4/27/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

class HomeBottomView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

        var homeController: MainViewController?
        var horizontalBarLeftAnchorConstraint: NSLayoutConstraint?
    

        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout())
        static func layout() -> UICollectionViewFlowLayout {
           let layout = UICollectionViewFlowLayout()
           return layout
        }

        let cellId = "menuCellID"
        let imageNames = ["home", "playBox", "user", "group", "notification", "more"]

        override init(frame: CGRect) {
            super.init(frame: frame)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.register(HomeBottomCellCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
            let selectedIndexPath = IndexPath(item: 0, section: 0)
            collectionView.selectItem(at: selectedIndexPath, animated: true, scrollPosition: .bottom)
            collectionView.backgroundColor = .white
            addSubview(collectionView)
            collectionView.pinBottomToSuperview(0).pinRightToSuperview(0).pinLeftToSuperview(0).setHeight(50).asView()
            setupHorizontalBar()
    }

        func setupHorizontalBar() {
            let horizontalBarView = UIView()
            horizontalBarView.backgroundColor = UIColor(red: 0.13, green: 0.48, blue: 0.94, alpha: 1.00)
            horizontalBarView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(horizontalBarView)

            horizontalBarLeftAnchorConstraint = horizontalBarView.leftAnchor.constraint(equalTo: self.leftAnchor)
            horizontalBarLeftAnchorConstraint?.isActive = true

            horizontalBarView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            horizontalBarView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/6).isActive = true
            horizontalBarView.heightAnchor.constraint(equalToConstant: 6).isActive = true
        }

        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
             //homeController?.scrollToMenuIndex(menuIndex: indexPath.item)
            homeController?.scrollToMenuIndex(menuIndex: indexPath.row)
         }

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 6
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeBottomCellCollectionViewCell

            cell.imageView.image = UIImage(named: imageNames[indexPath.item])?.withRenderingMode(.alwaysTemplate)
            return cell
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: frame.width / 6, height: frame.height)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}

