//
//  ViewController.swift
//  PickerViewMission
//
//  Created by Jaedoo Ko on 2020/01/19.
//  Copyright © 2020 Jaedoo Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let PICKER_VIEW_COLUMN: Int = 2
    let MAX_ARRAY_NUM: Int = 10
    let PICKER_VIEW_HEIGHT: CGFloat = 80
    var imageNames: [String] = {
        var names: [String] = []
        (1...10).forEach {
            names.append("\($0).jpg")
        }
        return names
    }()
    var imageArray: [UIImage?] = []
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var lbSelectedImageName: UILabel!
    @IBOutlet var selectedImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageNames.forEach {
            let image: UIImage? = UIImage(named: $0)
            imageArray.append(image)
        }
        
        lbSelectedImageName.text = imageNames[0]
        selectedImage.image = imageArray[0]
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView: UIImageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            lbSelectedImageName.text = imageNames[row]
        } else {
            selectedImage.image = imageArray[row]
        }
    }
}

