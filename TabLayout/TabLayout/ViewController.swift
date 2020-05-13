//
//  ViewController.swift
//  TabLayout
//
//  Created by Jaedoo Ko on 2020/05/12.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* MARK: UI */
    
    let tabBar: TabLayout = TabLayout()
    
    let titles = ["home", "hot", "new", "abc", "adsa", "1231", "breb"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.tabBar)
        
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        tabBar.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        tabBar.heightAnchor.constraint(greaterThanOrEqualToConstant: 150).isActive = true
        tabBar.heightAnchor.constraint(lessThanOrEqualToConstant: 250).isActive = true
        tabBar.backgroundColor = .green
        tabBar.setTitles(titles: titles)
    }

    /* MARK: Logic */

}
