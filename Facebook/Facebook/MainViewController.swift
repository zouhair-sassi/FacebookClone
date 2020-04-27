//
//  ViewController.swift
//  Facebook
//
//  Created by Zouhair Sassi on 4/25/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

class MainViewController: UICollectionViewController {

    let homeCellIdentifier = "homeCollectionViewIdentifier"
    var headerView = HomeHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: self.view.frame.width, height: 300)
        self.collectionView.collectionViewLayout = layout
        self.collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: homeCellIdentifier)
        setupNavBar()
    }

    fileprivate func setupNavBar() {
        let coverWhiteView = UIView()
        coverWhiteView.backgroundColor = .white
        coverWhiteView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(coverWhiteView)
        let safeAreaTop = UIApplication.shared.windows.filter{$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
        let width = view.frame.width
        coverWhiteView.pinTopToSuperview(0).setWidth(width).setHeight(safeAreaTop)

        headerView.frame = .init(x: 0, y: 0, width: self.view.frame.width, height: 50)
        navigationItem.titleView = headerView

        headerView.searchButton.addTarget(self, action: #selector(searchBtnTapped), for: .touchUpInside)
    }

    @objc func searchBtnTapped() {
        let alert = UIAlertController(title: "Search button Tapped", message: nil, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }

    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let safeAreaTop = UIApplication.shared.windows.filter{$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
        let magicalSafeAreaTop: CGFloat = safeAreaTop + (navigationController?.navigationBar.frame.height ?? 0)
        let offset = scrollView.contentOffset.y + magicalSafeAreaTop
        let alpha: CGFloat = 1 - ((scrollView.contentOffset.y + magicalSafeAreaTop) / magicalSafeAreaTop)
        [headerView.fbLogoImgView, headerView.searchButton, headerView.messengerButton].forEach{$0.alpha = alpha}
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
    }
}

//MARK: collectionView DataSource
extension MainViewController {

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : HomeCell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCellIdentifier, for: indexPath) as! HomeCell
        cell.backgroundColor = .white
        cell.pubImageView.image = UIImage(named: "road")
        cell.userIcon.image = UIImage(named: "github")
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

