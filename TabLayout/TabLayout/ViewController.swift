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
    
    lazy var tabBar: TabLayout = {
        let tab = TabLayout()
        tab.backgroundColor = .green
        tab.translatesAutoresizingMaskIntoConstraints = false
        return tab
    }()
    
    let titles = ["home", "hot", "new", "abc", "adsa", "1231", "breb"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.tabBar)
        tabBar.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        tabBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        tabBar.heightAnchor.constraint(equalToConstant: 80).isActive = true
        tabBar.setTitles(titles: titles)
    }

    /* MARK: Logic */

}
