//
//  TabLayout.swift
//  TabLayout
//
//  Created by Jaedoo Ko on 2020/05/12.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class TabLayout: UIView {


    /* MARK: - UI */
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        cv.showsHorizontalScrollIndicator = false
        cv.dataSource = self
        cv.delegate = self
        cv.register(TabTitleCell.self, forCellWithReuseIdentifier: TabTitleCell.identifier)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(collectionView)
        collectionView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        collectionView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    /* MARK: - Data */
    
    
    
    private var tabTitles: [String] = []
    
    func setTitles(titles: [String]) {
        self.tabTitles = titles
        collectionView.reloadData()
    }
    
}

extension TabLayout: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.tabTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TabTitleCell.identifier, for: indexPath) as! TabTitleCell
        cell.textLabel.text = tabTitles[indexPath.row]
        return cell as UICollectionViewCell
    }
    
}

extension TabLayout: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 65)
    }
}

extension TabLayout: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TabTitleCell.identifier, for: indexPath) as! TabTitleCell
//        cell.textLabel.textColor = .blue
    }
}
