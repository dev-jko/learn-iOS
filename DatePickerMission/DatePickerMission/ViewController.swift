//
//  ViewController.swift
//  DatePickerMission
//
//  Created by Jaedoo Ko on 2020/01/18.
//  Copyright © 2020 Jaedoo Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let interval: Double = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let formatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        return formatter
    }()
    let checkFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        return formatter
    }()
    var pickedTime: String = ""
    
    @IBOutlet var currentTimeLabel: UILabel!
    @IBOutlet var pickedTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    
    @IBAction func changeDate(_ sender: UIDatePicker) {
        pickedTimeLabel.text = "선택시간 : " + formatter.string(from: sender.date)
        pickedTime = checkFormatter.string(from: sender.date)
    }
    
    @objc func updateTime() {
        let date: NSDate = NSDate()
        currentTimeLabel.text = "현재시간 : " + formatter.string(from: date as Date)
        
        if checkFormatter.string(from: date as Date) == pickedTime {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
    }
}

