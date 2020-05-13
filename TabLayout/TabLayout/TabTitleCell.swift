//
//  CollectionViewCell.swift
//  TabLayout
//
//  Created by Jaedoo Ko on 2020/05/12.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class TabTitleCell: UICollectionViewCell {
    
    static let identifier: String = "TabTitleCell"
    
    lazy var textLabel: UILabel = {
        let lb = UILabel()
        
        return lb
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        textLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
