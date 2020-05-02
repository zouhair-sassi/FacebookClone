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
    lazy var safeAreaTop = UIApplication.shared.windows.filter{$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
    lazy var safeAreaBottom = UIApplication.shared.windows.filter{$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? 0
    lazy var viewWidth = self.view.frame.width
    var headerView = HomeHeaderView()
    lazy var menuBar : HomeBottomView = {
        let mb = HomeBottomView()
        mb.homeController = self
        return mb
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .init(white: 0.9, alpha: 1)
        setupNavBar()
        setupBottomBar()
        setupCollectionView()
    }

    fileprivate func setupNavBar() {
        let coverWhiteView = UIView()
        coverWhiteView.backgroundColor = .white
        coverWhiteView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(coverWhiteView)

        coverWhiteView.pinTopToSuperview(0).setWidth(viewWidth).setHeight(safeAreaTop)

        headerView.frame = .init(x: 0, y: 0, width: self.view.frame.width, height: 50)
        navigationItem.titleView = headerView

        headerView.searchButton.addTarget(self, action: #selector(searchBtnTapped), for: .touchUpInside)
    }

    func setupCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: view.frame.size.width, height: view.frame.size.height - (safeAreaTop))
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 0

        collectionView.collectionViewLayout = flowLayout

        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: homeCellIdentifier)

        collectionView?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.pinTopToSuperview(safeAreaTop).pinBottomToSuperview(80).pinLeftToSuperview(0).pinRightToSuperview(0).asView()

    }

    fileprivate func setupBottomBar() {
        let coverWhiteView = UIView()
        coverWhiteView.backgroundColor = .white
        coverWhiteView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(coverWhiteView)
        let width = view.frame.width
        coverWhiteView.pinBottomToSuperview(0).setWidth(width).setHeight(safeAreaBottom)

        menuBar.backgroundColor = .white
        menuBar.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(menuBar)
        menuBar.pinLeftToSuperview(0).pinRightToSuperview(0).pinBottomToSuperview(safeAreaBottom).setHeight(55).asView()
    }

    @objc func searchBtnTapped() {
        let alert = UIAlertController(title: "Search button Tapped", message: nil, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }

    func scrollToMenuIndex(menuIndex: Int) {
        let indexPath = IndexPath(item: menuIndex, section: 0)
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }

    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        menuBar.horizontalBarLeftAnchorConstraint?.constant = scrollView.contentOffset.x / 6
    }

    func cellDidScroll(scrollView: UIScrollView) {
        let safeAreaTop = UIApplication.shared.windows.filter{$0.isKeyWindow}.first?.safeAreaInsets.top ?? 0
        let magicalSafeAreaTop: CGFloat = safeAreaTop + (navigationController?.navigationBar.frame.height ?? 0)
        let offset = scrollView.contentOffset.y + magicalSafeAreaTop
        let alpha: CGFloat = 1 - ((scrollView.contentOffset.y + magicalSafeAreaTop) / magicalSafeAreaTop)
        [headerView.fbLogoImgView, headerView.searchButton, headerView.messengerButton].forEach{$0.alpha = alpha}
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, offset))
    }
}

//MARK: collectionView DataSource
extension MainViewController {

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell : HomeCell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCellIdentifier, for: indexPath) as! HomeCell
        cell.homeController = self
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}

