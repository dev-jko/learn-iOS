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
        lb.textColor = .lightGray
        lb.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        lb.textAlignment = .center
        lb.backgroundColor = .clear
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    lazy var indicator: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override var isSelected: Bool {
        didSet {
            if (isSelected) {
                indicator.backgroundColor = .red
                textLabel.textColor = .blue
            }
            else {
                indicator.backgroundColor = .clear
                textLabel.textColor = .lightGray
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if (isHighlighted) { indicator.backgroundColor = .red }
            else { indicator.backgroundColor = .clear }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        
        addSubview(textLabel)
        textLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        textLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        
        addSubview(indicator)
        indicator.topAnchor.constraint(equalTo: textLabel.bottomAnchor).isActive = true
        indicator.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        indicator.heightAnchor.constraint(equalToConstant: 10).isActive = true
        indicator.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
