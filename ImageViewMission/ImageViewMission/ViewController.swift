//
//  ViewController.swift
//  ImageViewMission
//
//  Created by Jaedoo Ko on 2020/01/17.
//  Copyright © 2020 Jaedoo Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let indexRange: ClosedRange = 1...6
    var currentIndex: Int = 0
    var images: [UIImage] = []
    
    @IBOutlet var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        indexRange.forEach {
            if let image: UIImage = UIImage(named: "\($0).png") {
                images.append(image)
            }
        }
        
        imgView.image = images.first
    }


    @IBAction func changeToBefore(_ sender: UIButton) {
        currentIndex -= 1
        if currentIndex < 0 {
            currentIndex = images.count - 1
        }
        
        imgView.image = images[currentIndex]
    }
    
    @IBAction func changeToNext(_ sender: UIButton) {
        currentIndex += 1
        if currentIndex == images.count {
            currentIndex = 0
        }
        
        imgView.image = images[currentIndex]
    }
}

