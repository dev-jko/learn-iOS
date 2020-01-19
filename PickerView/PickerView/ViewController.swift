//
//  ViewController.swift
//  PickerView
//
//  Created by Jaedoo Ko on 2020/01/19.
//  Copyright © 2020 Jaedoo Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM: Int = 10
    let PICKER_VIEW_COLUMN: Int = 1
    let PICKER_VIEW_HEIGHT: CGFloat = 80
    var imageArray: [UIImage?] = []
    var imageFileName: [String] = {
        var names: [String] = []
        (1...10).forEach {
            names.append("\($0).jpg")
        }
        return names
    }()
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lbImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        (0..<MAX_ARRAY_NUM).forEach {
            let image: UIImage? = UIImage(named: imageFileName[$0])
            imageArray.append(image)
        }
        
        lbImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
}

